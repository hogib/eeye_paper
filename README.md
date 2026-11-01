# electric-eye: Real-Time Image Enhancement and Low-Latency Video Transport for Remotely Operated Underwater Vehicles

LaTeX sources of the material-and-methods description of electric-eye, the camera
processing (`eeye`) and tether transport (`hellion`) pipeline for remotely operated
underwater vehicles. The software is at https://github.com/hogib/electric-eye; this
description corresponds to release v0.3.1.

H. Oğuz Bolat (Department of Geomatics Engineering) and Hakan Ersoy (Department of
Electronics and Communication Engineering), Yıldız Technical University, İstanbul.

## Build

With [tectonic](https://tectonic-typesetting.github.io), which fetches the LaTeX
packages it needs, or with a TeX Live installation that has `latexmk`:

```bash
make         # paper.pdf
make clean   # remove intermediate files
```

## Files

| file | content |
|---|---|
| `paper.tex`, `refs.bib` | manuscript and references |
| `figures/` | Figure 3, rendered from the frames of the software's own test (`tests/test_auto_vis.c`); the other figures are drawn in TikZ in `paper.tex` |
| `cas-sc.cls`, `cas-common.sty`, `cas-model2-names.bst`, `thumbnails/` | Elsevier's CAS template |

## License

The text and figures are licensed under the Creative Commons Attribution 4.0
International License (`LICENSE`). The template files are Elsevier's, under the LaTeX
Project Public License.
