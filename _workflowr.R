# Step 1: Commit analysis files

system("git add analysis/about.Rmd")
system("git add analysis/index.Rmd")
system("git add analysis/license.Rmd")
system("git add analysis/01-batch-integration.Rmd")
system("git add analysis/02-atlas-integration.Rmd")
system("git add analysis/03-human-integration.Rmd")
system("git add analysis/interactive.Rmd")
system("git commit -m 'Build'")

# Step 2: Build HTML files

wflow_build("analysis/about.Rmd")
wflow_build("analysis/index.Rmd")
wflow_build("analysis/license.Rmd")
wflow_build("analysis/01-batch-integration.Rmd")
wflow_build("analysis/02-atlas-integration.Rmd")
wflow_build("analysis/03-human-integration.Rmd")
wflow_build("analysis/interactive.Rmd")

# Step 3: Commit HTML files

system("git add docs/about.html")
system("git add docs/index.html")
system("git add docs/license.html")
system("git add docs/01-batch-integration.html")
system("git add docs/02-atlas-integration.html")
system("git add docs/03-human-integration.html")
system("git add docs/interactive.html")
system("git add docs/figure/01-batch-integration.Rmd")
system("git add docs/figure/02-atlas-integration.Rmd")
system("git add docs/figure/03-human-integration.Rmd")
system("git add docs/site_libs")
system("git add docs/.nojekyll")
system("git commit -m 'Build'")
system("git push origin master")
