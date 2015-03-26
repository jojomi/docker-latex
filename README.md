# docker-latex
Container for building LaTeX documents (using TeXlive)



## Building

    docker build -t jojomi/latex .

## Compiling

    docker run --rm -v `pwd`/example:/src jojomi/latex



## Customizing

Package options: http://packages.ubuntu.com/de/vivid/tex/
