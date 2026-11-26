# electric-eye: Real-Time Image Enhancement and Low-Latency Video Transport for Remotely Operated Underwater Vehicles

LaTeX sources of the manuscript on electric-eye, the camera
processing (`eeye`) and tether transport (`hellion`) pipeline for remotely operated
underwater vehicles. The software is at https://github.com/hogib/electric-eye; this
description corresponds to commit b7a2e8a, which follows release v0.3.2.

H. Oğuz Bolat (Department of Geomatics Engineering) and Hakan Ersoy (Department of
Electronics and Communication Engineering), Yıldız Technical University, İstanbul.

## Build

With [tectonic](https://tectonic-typesetting.github.io), which fetches the LaTeX
packages it needs, or with a TeX Live installation that has `latexmk`:

```bash
make         # main.pdf
make clean   # remove intermediate files
```

`main.tex` builds the journal's review format (one column, double-spaced, 12 pt,
continuous line numbers) by default; change `\reviewtrue` to `\reviewfalse` near its
top for the two-column final format.

## Files

| file | content |
|---|---|
| `main.tex` | preamble, title, abstract; inputs the sections |
| `sections/` | introduction, related work, one file per subsection of the design and methods, results, discussion, conclusion, code availability and acknowledgment |
| `refs.bib` | references |
| `figures/` | Figure 3, rendered from the frames of the software's own test (`tests/test_auto_vis.c`); the other figures are drawn in TikZ in the section files |

## License

The text and figures are licensed under the Creative Commons Attribution 4.0
International License (`LICENSE`). The manuscript uses the IEEE journal template
(`IEEEtran.cls`, `IEEEtran.bst`) from the TeX distribution, as for the IEEE Journal of
Oceanic Engineering.
