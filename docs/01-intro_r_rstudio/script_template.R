# Packages ----------------------------------------------------------

library(tidyverse)
library(labelled)
library(rio)
library(spicy)
library(janitor)


# Import data -------------------------------------------------------

# Adaptez le chemin de fichier, le nom et l'extension du ficher
d <- import("data/raw/data.csv")


# Clean data --------------------------------------------------------

d <- d |> janitor::clean_names()


# Recode ------------------------------------------------------------


# Save --------------------------------------------------------------

# Adaptez le chemin de fichier
export(d, "data/processed/data.rda")
