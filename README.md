# docker-latex
Container for building LaTeX documents (using TeXlive)



## Building The Image

    docker build -t jojomi/latex .

## Compiling a TeX Document

Usually you would set your working directory and then call little scripts in `bin` directory:

    cd example
    ./bin/pdflatex

This will compile `document.tex`. You can add parameters and change the latex binary (support for `pdflatex`, `xelatex`, and `lualatex` is included):

    ./bin/lualatex mydocument.tex

If you want those binaries to be globally available, you'll have to put them in your `PATH`. Check its current value like this:

    echo $PATH

Now pick one of the directories listed there and link the scripts there:

```
for f in bin/*; do sudo ln -s "$(pwd)/$f" /usr/local/bin/$(basename $f); done
```


## Size

```
docker images | grep jojomi/latex

REPOSITORY                TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
jojomi/latex              latest              1ec25f9f4346        1 minute ago        694 MB
```

## Customizing

You can customize the image if you build it yourself (see above about how to build). This way you can adapt the package selection [with these packages from the Ubuntu Vivid Vervet repository](http://packages.ubuntu.com/de/vivid/tex/)


## Future Plans

It might be a good idea to document how to use this to offer **Compilation as a Service** (CaaS) to users on remote machines. Technically sshfs or rsync are options to go with in that case I think. In a CaaS scenario the need to have a local TeX installation with all its pain is gone. Solve problems once, not over and over again!
