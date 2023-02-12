# Plantuml CLI

[![NPM](https://img.shields.io/npm/v/plantuml-cli.svg?style=flat-square) ](https://www.npmjs.com/package/plantuml-cli)

This is [Plantuml](https://github.com/plantuml/plantuml) wrapped [inside an NPM package](https://github.com/tomasbjerre/npm-java-runner). It relies only on dependencies found in NPM.

See: https://github.com/plantuml/plantuml

## Example - Command line

It can be used as a command line tool like this:

```bash
npx plantuml-cli
```

## Command line arguments

Available command line arguments `npx plantuml-cli -h`:

```
Usage: java -jar plantuml.jar [options] -gui
  (to execute the GUI)
    or java -jar plantuml.jar [options] [file/dir] [file/dir] [file/dir]
  (to process files or directories)

You can use the following wildcards in files/dirs:
  *  means any characters but '/'
  ?  one and only one character but '/'
  **  means any characters (used to recurse through directories)

where options include:
    -darkmode    To use dark mode for diagrams
    -gui    To run the graphical user interface
    -tpng    To generate images using PNG format (default)
    -tsvg    To generate images using SVG format
    -teps    To generate images using EPS format
    -tpdf    To generate images using PDF format
    -tvdx    To generate images using VDX format
    -txmi    To generate XMI file for class diagram
    -tscxml    To generate SCXML file for state diagram
    -thtml    To generate HTML file for class diagram
    -ttxt    To generate images with ASCII art
    -tutxt    To generate images with ASCII art using Unicode characters
    -tlatex    To generate images using LaTeX/Tikz format
    -tlatex:nopreamble  To generate images using LaTeX/Tikz format without preamble
    -o[utput] "dir"  To generate images in the specified directory
    -DVAR1=value  To set a preprocessing variable as if '!define VAR1 value' were used
    -Sparam1=value  To set a skin parameter as if 'skinparam param1 value' were used
    -Ppragma1=value  To set pragma as if '!pragma pragma1 value' were used
    -I/path/to/file  To include file as if '!include file' were used
    -I/path/to/*.puml  To include files with pattern
    -theme xxx    To use a specific theme
    -charset xxx  To use a specific charset (default is UTF-8)
    -e[x]clude pattern  To exclude files that match the provided pattern
    -metadata    To retrieve PlantUML sources from PNG images
    -nometadata    To NOT export metadata in PNG/SVG generated files
    -checkmetadata    Skip PNG files that don't need to be regenerated
    -version    To display information about PlantUML and Java versions
    -v[erbose]    To have log information
    -quiet    To NOT print error message into the console
    -debugsvek    To generate intermediate svek files
    -h[elp]    To display this help message
    -testdot    To test the installation of graphviz
    -graphvizdot "exe"  To specify dot executable
    -p[ipe]    To use stdin for PlantUML source and stdout for PNG/SVG/EPS generation
    -encodesprite 4|8|16[z] "file"  To encode a sprite at gray level (z for compression) from an image
    -computeurl|-encodeurl  To compute the encoded URL of a PlantUML source file
    -decodeurl    To retrieve the PlantUML source from an encoded URL
    -syntax    To report any syntax error from standard input without generating images
    -language    To print the list of PlantUML keywords
    -checkonly    To check the syntax of files without generating images
    -failfast    To stop processing as soon as a syntax error in diagram occurs
    -failfast2    To do a first syntax check before processing files, to fail even faster
    -noerror    To skip images when error in diagrams
    -duration    To print the duration of complete diagrams processing
    -nbthread N    To use (N) threads for processing
    -nbthread auto  To use 4 threads for processing
    -timeout N    Processing timeout in (N) seconds. Defaults to 15 minutes (900 seconds).
    -author[s]    To print information about PlantUML authors
    -overwrite    To allow to overwrite read only files
    -printfonts    To print fonts available on your system
    -enablestats  To enable statistics computation
    -disablestats  To disable statistics computation (default)
    -htmlstats    To output general statistics in file plantuml-stats.html
    -xmlstats    To output general statistics in file plantuml-stats.xml
    -realtimestats  To generate statistics on the fly rather than at the end
    -loopstats    To continuously print statistics about usage
    -splash    To display a splash screen with some progress bar
    -progress    To display a textual progress bar in console
    -pipeimageindex N  To generate the Nth image with pipe option
    -stdlib    To print standard library info
    -extractstdlib  To extract PlantUML Standard Library into stdlib folder
    -filedir xxx  To behave as if the PlantUML source is in this dir (only affects '-pipe' and PicoWeb 'POST /render')
    -filename "example.puml"  To override %filename% variable
    -preproc    To output preprocessor text of diagrams
    -cypher    To cypher texts of diagrams so that you can share them
    -picoweb    To start internal HTTP Server. See https://plantuml.com/picoweb

If needed, you can setup the environment variable GRAPHVIZ_DOT.
```
