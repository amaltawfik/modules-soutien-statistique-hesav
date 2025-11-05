# Initialise la structure du projet --------------------------------------------

dirs <- c(
  "data/raw",
  "data/processed",
  "scripts",
  "outputs/figures",
  "outputs/tables"
)

for (d in dirs) {
  if (!dir.exists(d)) dir.create(d, recursive = TRUE)
}


# Affiche l'arborescence avec fs si le package est installé --------------------
if (requireNamespace("fs", quietly = TRUE)) {
  cat("\n Structure actuelle du projet :\n")
  fs::dir_tree(path = ".", recurse = 2)
} else {
  cat("Installez {fs} pour afficher l’arborescence.\n")
}
