# Gonfanôn Icons

**_Gonfanôn_ is a free and modern SVG icon theme designed for webapps. Its content is mainly composed of *actions*, *direction* and *navigation* icons, with a style inspired by the flat design trend.**

You can resize the icons according to your requirements.


[![Successfully checked as SVG 1.1](http://www.w3.org/Icons/valid-svg11-blue  "Checks the validity of the last update")](http://validator.w3.org/check?uri=https%3A%2F%2Fvuzonp.github.io%2Fgonfanon-icons%2Fgonfanon.svg)

## Preview

[<img src="https://i.imgur.com/jnAGvLS.png" alt="preview" width="424" height="324" />](https://vuzonp.github.io/gonfanon-icons/gonfanon.svg)

An overview of icons is available [here ](https://vuzonp.github.io/gonfanon-icons/gonfanon.svg).

## Specifications
**A collection of 115 icons.**

- SVG 1.1
- Compatible with all modern browsers (*Chrome, IE9-Edge, Firefox, Opera, Safari*)
- Light: **28.1kb** minified (*5.3kb*  with gzip);
- Optimized for icons in 24 × 24 pixels (default baseline of browsers);
- Handle these icons easily with CSS and JavaScript.

## Installation

If you use [Bower](http://bower.io/) :

```sh
$ bower install gonfanon-icons
```

Or if you prefer to use __git__ :

```sh
$ git clone https://github.com/vuzonp/gonfanon-icons.git
```

If none of the previous methods suits you, a **zip archive** of the project is [available here](https://github.com/vuzonp/gonfanon-icons/archive/master.zip).

## Getting Started

Embed SVG icons inside an html page is not simple. If you have never done it, I suggest you to read some tutorials:

- [SVG In HTML Introduction (MDN)](https://developer.mozilla.org/en-US/docs/SVG_In_HTML_Introduction)
- [Icon System with SVG Sprites (CSS Tricks)](https://css-tricks.com/svg-sprites-use-better-icon-fonts/)
- [SVG symbol good choice icons (CSS Tricks)](https://css-tricks.com/svg-symbol-good-choice-icons/)

Gonfanôn is constitued of a SVG sprite (all icons are packaged in a single file). Each icon can be identified by its DOM identifier prefixed by `icon-`.

**Example:** an icon called *foo* has the: `#icon-foo` <dfn title="Internationalized Resource Identifier">IRI</dfn> and can be loaded like this:
```svg
<use xlink:href="#icon-foo" />`
```

###How to Use
1. To begin with, copy the contents of *gonfanon.svg* at the top of your html page;
2. Then, load the icons that you need at the location where they must appear.

**Example:**
```html
<html>
	<head>
		<title>Example</title>
	</head>
	<body>
		<svg class="visually-hidden">
			<!-- Copy of the contents of the gonfanon.svg file here -->
		</svg>

		<!-- Call your icon in using the <use> tag -->
		<button>
			<svg class="icon" viewBox="0 0 24 24">
				<use xlink:href="#icon-arrow" />
			</svg>
			<span>Go</span>
		</button>

	</body>
</html>
```

#### Variant
In many modern browsers, it is possible to use an external file with the `<use>` tag, so it is not necessary to copy the content of the *gonfanon.svg* file in your html page ([Learn More](https://css-tricks.com/svg-use-external-source/)).

**Example:**
```html
<html>
	<head>
		<title>Example</title>
	</head>
	<body>

		<!-- Call your icon in using the <use> tag -->
		<button>
			<svg class="icon" viewBox="0 0 24 24">
				<use xlink:href="./path/to/static/gonfanon.svg#icon-arrow" />
			</svg>
			<span>Go</span>
		</button>

	</body>
</html>
```

## Contributors

- Design and Dev: [Thomas Girard](https://twitter.com/vuzonp);
- Proofreading documents: [Sophie Fauvel](https://twitter.com/SophieFauvel).

## License

![CC-BY-SA 4.0](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)

Gonfanôn icons by [Thomas Girard](http://www.thomasgirard.fr/) is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).
Based on a work at https://github.com/vuzonp/gonfanon-icons.
