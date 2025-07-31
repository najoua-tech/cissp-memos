#!/bin/bash
git add .
git commit -m "Update site and contenu"
git push origin main
python -m mkdocs gh-deploy