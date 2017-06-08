# fabianhauser/tectonic

This docker image provides a preinstalled [tectonic](https://tectonic-typesetting.github.io/):

> Tectonic is a modernized, complete, self-contained TeX/LaTeX engine, powered by XeTeX and TeXLive.

## Usage
```bash
docker run -it --rm --volume ${pwd}:/tectonic bemayr/tectonic --help
docker run -it --rm --volume ${pwd}:/tectonic bemayr/tectonic <filename>.tex
```

## Development
```bash
docker build -t bemayr/tectonic:0.1.5
```
