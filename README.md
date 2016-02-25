# Pandoc Docker Container

[Docker](https://www.docker.io/) container for the source distribution of [Pandoc](http://johnmacfarlane.net/pandoc), with Latex tools installed.

    docker run cameronbrunner/univa-pdflatex

    Usage: pdftex [OPTION]... [TEXNAME[.tex]] [COMMANDS]
       or: pdftex [OPTION]... \FIRST-LINE
       or: pdftex [OPTION]... &FMT ARGS
      Run pdfTeX on TEXNAME, usually creating TEXNAME.pdf.
      Any remaining COMMANDS are processed as pdfTeX input, after TEXNAME is read.
      If the first line of TEXNAME is %&FMT, and FMT is an existing .fmt file,
      use it.  Else use `NAME.fmt', where NAME is the program invocation name,
      most commonly `pdftex'.
    
      Alternatively, if the first non-option argument begins with a backslash,
      interpret all non-option arguments as a line of pdfTeX input.

      Alternatively, if the first non-option argument begins with a &, the
      next word is taken as the FMT to read, overriding all else.  Any
      remaining arguments are processed as above.

      If no arguments or options are specified, prompt for input.

    -draftmode              switch on draft mode (generates no output PDF)
    -enc                    enable encTeX extensions such as \mubyte
    -etex                   enable e-TeX extensions
    [-no]-file-line-error   disable/enable file:line:error style messages
    -fmt=FMTNAME            use FMTNAME instead of program name or a %& line
    -halt-on-error          stop processing at the first error
    -ini                    be pdfinitex, for dumping formats; this is implicitly
                              true if the program name is `pdfinitex'
    -interaction=STRING     set interaction mode (STRING=batchmode/nonstopmode/
                              scrollmode/errorstopmode)
    -ipc                    send DVI output to a socket as well as the usual
                              output file
    -ipc-start              as -ipc, and also start the server at the other end
    -jobname=STRING         set the job name to STRING
    -kpathsea-debug=NUMBER  set path searching debugging flags according to
                              the bits of NUMBER
    [-no]-mktex=FMT         disable/enable mktexFMT generation (FMT=tex/tfm/pk)
    -mltex                  enable MLTeX extensions such as \charsubdef
    -output-comment=STRING  use STRING for DVI file comment instead of date
                              (no effect for PDF)
    -output-directory=DIR   use existing DIR as the directory to write files in
    -output-format=FORMAT   use FORMAT for job output; FORMAT is `dvi' or `pdf'
    [-no]-parse-first-line  disable/enable parsing of first line of input file
    -progname=STRING        set program (and fmt) name to STRING
    -recorder               enable filename recorder
    [-no]-shell-escape      disable/enable \write18{SHELL COMMAND}
    -shell-restricted       enable restricted \write18
    -src-specials           insert source specials into the DVI file
    -src-specials=WHERE     insert source specials in certain places of
                              the DVI file. WHERE is a comma-separated value
                              list: cr display hbox math par parend vbox
    -synctex=NUMBER         generate SyncTeX data for previewers if nonzero
    -translate-file=TCXNAME use the TCX file TCXNAME
    -8bit                   make all characters printable by default
    -help                   display this help and exit
    -version                output version information and exit

    Email bug reports to pdftex@tug.org.


A `/source` directory is created in the container, which can be mapped for use with relative file paths. Pandoc will always be run from the `/source` directory in the container.

    docker run -v `pwd`:/source cameronbrunner/univa-pdflatex --output-directory=build --interaction=batchmode in.tex
