# Step 1: Commit RMD files

system("git add analysis/about.Rmd")
system("git add analysis/index.Rmd")
system("git add analysis/license.Rmd")
system("git add analysis/01-batch-integration.Rmd")
system("git add analysis/02-reduced-dimensions.Rmd")
system("git add analysis/03-clustering.Rmd")
system("git add analysis/04-marker-detection.Rmd")
system("git add analysis/supervised-analysis.Rmd")
system("git add analysis/supervised-signaling.Rmd")
# system("git add analysis/mouse-integration.Rmd")
# system("git add analysis/mouse-neighbors.Rmd")
# system("git add analysis/mouse-similarity.Rmd")
# system("git add analysis/human-integration.Rmd")
# system("git add analysis/chicken-integration.Rmd")
# system("git add analysis/interactive.Rmd")
system("git commit -m 'Build'")

# Step 2: Build HTML files

wflow_build("analysis/about.Rmd")
wflow_build("analysis/index.Rmd")
wflow_build("analysis/license.Rmd")
wflow_build("analysis/01-batch-integration.Rmd")
wflow_build("analysis/02-reduced-dimensions.Rmd")
wflow_build("analysis/03-clustering.Rmd")
wflow_build("analysis/04-marker-detection.Rmd")
wflow_build("analysis/supervised-analysis.Rmd")
wflow_build("analysis/supervised-signaling.Rmd")
# wflow_build("analysis/mouse-integration.Rmd")
# wflow_build("analysis/mouse-neighbors.Rmd")
# wflow_build("analysis/mouse-similarity.Rmd")
# wflow_build("analysis/human-integration.Rmd")
# wflow_build("analysis/chicken-integration.Rmd")
# wflow_build("analysis/interactive.Rmd")

# Step 3: Add HTML files

system("git add docs/about.html")
system("git add docs/index.html")
system("git add docs/license.html")
system("git add docs/01-batch-integration.html")
system("git add docs/02-reduced-dimensions.html")
system("git add docs/03-clustering.html")
system("git add docs/04-marker-detection.html")
system("git add docs/supervised-analysis.html")
system("git add docs/supervised-signaling.html")
# system("git add docs/mouse-integration.html")
# system("git add docs/mouse-neighbors.html")
# system("git add docs/mouse-similarity.html")
# system("git add docs/human-integration.html")
# system("git add docs/chicken-integration.html")
# system("git add docs/interactive.html")

# Step 4: Add PNG files

system("git add docs/figure/01-batch-integration.Rmd")
system("git add docs/figure/02-reduced-dimensions.Rmd")
system("git add docs/figure/03-clustering.Rmd")
system("git add docs/figure/04-marker-detection.Rmd")
system("git add docs/figure/supervised-analysis.Rmd")
system("git add docs/figure/supervised-signaling.Rmd")
# system("git add docs/figure/mouse-integration.Rmd")
# system("git add docs/figure/mouse-neighbors.Rmd")
# system("git add docs/figure/mouse-similarity.Rmd")
# system("git add docs/figure/human-integration.Rmd")
# system("git add docs/figure/chicken-integration.Rmd")

# Step 5: Add site files

system("git add docs/site_libs")
system("git add docs/.nojekyll")

# Step 6: Commit and push files

system("git commit -m 'Build'")
system("git push origin master")
