<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:svg="http://www.w3.org/2000/svg"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    version="1.0">

    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/svg:svg">

        <html>
            <head>
                <meta charset="utf-8" />
                <meta http-equiv="x-ua-compatible" content="ie=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <title>
                    <xsl:value-of select="svg:title"/>
                </title>
                <link
                    href="https://fonts.googleapis.com/css?family=Fira+Sans:400,300,300italic,400italic,500,500italic,700,700italic|Fira+Mono:400,700"
                    rel="stylesheet"
                    type="text/css" />
                <link
                    rel="stylesheet"
                    type="text/css"
                    href="./gh/makeup.css"
                    media="all" />
            </head>
            <body>

                <!-- Banner ================================================ -->

                <div id="intro">

                    <!-- +++++++++++++++++++++++++++++++++++++++++++++++++++ -->

                    <header role="banner" id="banner">
                        <div id="about">
                            <h1>
                                <xsl:value-of select="svg:title"/>
                                <small>v1.0 Beta</small>
                            </h1>
                            <h2 class="subtitle">
                                <xsl:value-of select="svg:desc"/>
                            </h2>
                            <div id="about-counter">
                                <span></span>
                                Icons Available!
                            </div>
                        </div>
                    </header>

                    <!-- Menu ++++++++++++++++++++++++++++++++++++++++++++++ -->

                    <nav id="navbar" class="no-print">
                        <ul>
                            <li>
                                <a href="#preview" id="btn-grid">
                                    <svg:svg class="icon" viewBox="0 0 24 24">
                                        <svg:use xlink:href="#icon-grid" />
                                    </svg:svg>
                                    <span class="facultative">Grid</span>
                                </a>
                            </li>
                            <li>
                                <a href="#preview" id="btn-list">
                                    <svg:svg class="icon" viewBox="0 0 24 24">
                                        <svg:use xlink:href="#icon-list" />
                                    </svg:svg>
                                    <span class="facultative">List</span>
                                </a>
                            </li>
                            <li>
                                <a href="#search">
                                    <svg:svg class="icon" viewBox="0 0 24 24">
                                        <svg:use xlink:href="#icon-search" />
                                    </svg:svg>
                                    <span class="facultative">Search</span>
                                </a>
                            </li>
                        </ul>
                    </nav>

                </div>

                <!-- Sprite ================================================ -->

                <div id="sprite" class="visually-hidden">
                    <svg:svg width="0" height="0">
                            <xsl:apply-templates mode="copy" select="node()" />
                    </svg:svg>
                </div>

                <!-- Main Content ========================================== -->

                <main>

                    <div class="summary no-print">
                        <h1>
                            <svg:svg class="icon" viewBox="0 0 24 24">
                                <svg:use xlink:href="#shape-star" />
                            </svg:svg>
                            Preview
                        </h1>
                        <p class="infobox">
                            Click or touch an icon for see more details.
                        </p>
                        <!--[if lt IE 9]>
                            <p class="infobox">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
                        <![endif]-->
                    </div>


                    <!-- Grid | List +++++++++++++++++++++++++++++++++++++++ -->

                    <section id="preview" class="list">
                        <h2 class="visually-hidden">List / Grid</h2>
                        <xsl:apply-templates select="//svg:symbol">
                            <!-- <xsl:sort select="@id"/> -->
                        </xsl:apply-templates>
                    </section>

                    <!-- Search ++++++++++++++++++++++++++++++++++++++++ -->
                    <section>

                        <form id="search" class="no-print" action="#search-result">
                            <input id="search-input" type="search" placeholder="#icon-search" list="iconset" />
                            <button id="btn-search" type="submit" formaction="search">
                                <svg:svg class="icon" viewBox="0 0 24 24">
                                    <svg:use xlink:href="#icon-search" />
                                </svg:svg>
                                <span class="facultative">Search</span>
                            </button>
                            <datalist id="iconset">
                                <xsl:for-each select="//svg:symbol">
                                    <xsl:if test="@id">
                                        <option value="{@id}" />
                                    </xsl:if>
                                </xsl:for-each>
                            </datalist>
                        </form>

                    </section>

                </main>

                <script src="gh/handler.js" type="application/javascript"></script>

            </body>
        </html>

    </xsl:template>

    <!-- Templates ========================================================= -->

    <!-- Sprite -->

    <xsl:template match="*" mode="copy">
        <xsl:element name="svg:{local-name()}" namespace="{namespace-uri()}">
            <xsl:apply-templates select="@*|node()" mode="copy" />
        </xsl:element>
    </xsl:template>

    <xsl:template match="@*|text()|comment()" mode="copy">
        <xsl:copy/>
    </xsl:template>

    <!-- List | Grid -->

    <xsl:template match="//svg:symbol">
        <xsl:if test="@id">
            <div class="icon-item" data-name="{@id}">
                <figure>

                    <!-- preview -->
                    <svg:svg viewBox="0 0 24 24" class="thumb">
                        <svg:use xlink:href="#{@id}" />
                    </svg:svg>

                    <!-- meta -->
                    <figcaption>
                        <div class="icon-info">
                            <h3><xsl:value-of select="./svg:title"/></h3>
                            <p><em><xsl:value-of select="./svg:desc"/></em></p>
                        </div>
                        <div class="icon-iri">
                            <code>#<xsl:value-of select="@id"/></code>
                        </div>
                    </figcaption>

                </figure>
            </div>
        </xsl:if>
    </xsl:template>


</xsl:stylesheet>
