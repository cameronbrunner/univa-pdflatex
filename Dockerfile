FROM cameronbrunner/univa-pandoc

ENTRYPOINT ["/usr/bin/pdflatex"]

CMD ["--help"]
