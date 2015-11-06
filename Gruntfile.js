module.exports = function(grunt) {

    grunt.initConfig({

        svgmin: {
            options: {
                plugins:[
                    { removeViewBox: false },
                    { removeUselessStrokeAndFill: false },
                    { cleanupIDs: false }
                ]
            },
            dist: {
                files: {
                    "gonfanon.min.svg": "gonfanon.svg"
                }
            }
        }

    });

    grunt.loadNpmTasks("grunt-svgmin");
    grunt.registerTask("default", ["svgmin"]);

};
