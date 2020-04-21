#!/bin/bash
cd gatsby-site
npm install
npm run build
cd ../cra-site
npm install
npm run build
# rm -rf ../gatsby-site/public/cra
mv build ../gatsby-site/public/cra
cd ../gatsby-site
cp ../_redirects public/
# netlify deploy --dir=public --prod
