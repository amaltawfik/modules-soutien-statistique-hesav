@echo off
echo === Rendering HTML ===
quarto render

echo.
echo === Rendering PDFs ===
quarto render 01-intro_r_rstudio/index.qmd --to pdf
quarto render 02-clean_manipulation/index.qmd --to pdf
quarto render 03-analyses_bivariees/index.qmd --to pdf
quarto render 04-regression_lineaire/index.qmd --to pdf
quarto render 05-efa_echelles/index.qmd --to pdf
quarto render 06-visualisation/index.qmd --to pdf
quarto render 07-regression_logistique/index.qmd --to pdf

echo.
echo === Done! ===
pause