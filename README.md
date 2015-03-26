# docker-latex
Container for building LaTeX documents (using TeXlive)



## Building

    docker build -t jojomi/latex .

## Compiling

    docker run --rm -v `pwd`/example:/src jojomi/latex


## Size

```
REPOSITORY                TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
jojomi/latex              latest              1b4e99f84427        1 minute ago      774.9 MB
```

## Customizing

Package options: http://packages.ubuntu.com/de/vivid/tex/
