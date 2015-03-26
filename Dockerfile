FROM ubuntu:15.04
MAINTAINER Johannes Mitlmeier <dev.jojomi@yahoo.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get --yes update && \
    apt-get --yes dist-upgrade
RUN apt-get --yes --no-install-recommends --no-install-suggests install texlive texlive-lang-english texlive-lang-german \
        texlive-latex-base texlive-latex-recommended texlive-latex-extra && \
    apt-get --yes install texlive-xetex texlive-luatex && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME /src
WORKDIR /src
CMD pdflatex /src/document.tex
