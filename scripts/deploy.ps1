# PowerShell script to update GitHub repo and deploy MkDocs site

git add .
git commit -m "Update site and contenu"
git push origin main
python -m mkdocs gh-deploy
