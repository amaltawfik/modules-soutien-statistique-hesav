# Modules de soutien statistique 2025-2026

<https://amaltawfik.github.io/modules-soutien-statistique-hesav/>


## Rendu local

```bash
quarto render
```

## Publication GitHub Pages

1. Pousser vers GitHub
2. Activer **Settings → Pages → Branch: `main`, Folder: `/docs`**

## Générer les PDF

```bash
quarto render intro-r-rstudio/index.qmd --to pdf
quarto render tidyverse/index.qmd --to pdf
quarto render analyses-bivariees/index.qmd --to pdf
quarto render regression-lineaire/index.qmd --to pdf
quarto render efa-construction/index.qmd --to pdf
quarto render ggplot2/index.qmd --to pdf
quarto render regression-logistique/index.qmd --to pdf
```

Chaque PDF est produit sous le même dossier et nommé `index.pdf`.
