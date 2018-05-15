# Fresh install
cd my-app
rm -rf node_modules
rm -rf package-lock.json
npm install --no-package-lock
npm shrinkwrap
mv npm-shrinkwrap.json ../results/1-shrinkwrap.json


##### No Package-lock.json ######

#Update patch version of n-express. npm install.
cd ../n-express
npm version patch
npm publish --access public
cd ../my-app
npm install --no-package-lock
npm shrinkwrap && mv npm-shrinkwrap.json ../results/2-shrinkwrap.json


#Update patch version of n-express. npm update.
cd ../n-express
npm version patch
npm publish --access public
cd ../my-app
npm update --no-package-lock
npm shrinkwrap && mv npm-shrinkwrap.json ../results/3-shrinkwrap.json


#Update patch version of n-express. npm ci.
cd ../n-express
npm version patch
npm publish --access public
cd ../my-app
npm ci --no-package-lock
npm shrinkwrap && mv npm-shrinkwrap.json ../results/4-shrinkwrap.json

#Update minor version of n-ui. npm install.
cd ../n-ui
npm version minor
npm publish --access public
cd ../my-app
npm install --no-package-lock
npm shrinkwrap && mv npm-shrinkwrap.json ../results/5-shrinkwrap.json

#Update minor version of n-ui. npm update.
cd ../n-ui
npm version minor
npm publish --access public
cd ../my-app
npm update --no-package-lock
npm shrinkwrap && mv npm-shrinkwrap.json ../results/6-shrinkwrap.json

#Update minor version of n-ui. npm ci.
cd ../n-ui
npm version minor
npm publish --access public
cd ../my-app
npm ci --no-package-lock
npm shrinkwrap && mv npm-shrinkwrap.json ../results/7-shrinkwrap.json

#Update patch version of third-party-dep. Update in package.json. npm install.
cd ../third-party-dep
npm version patch
npm publish --access public
cd ../my-app
perl -i -pe 's/(third-party-dep\": \"\^\d+\.\d+\.)(\d+)/$1.($2 + 1)/e' package.json
npm install --no-package-lock
npm shrinkwrap && mv npm-shrinkwrap.json ../results/8-shrinkwrap.json

#Update patch version of third-party-dep. Update in package.json. npm update.
cd ../third-party-dep
npm version patch
npm publish --access public
cd ../my-app
perl -i -pe 's/(third-party-dep\": \"\^\d+\.\d+\.)(\d+)/$1.($2 + 1)/e' package.json
npm update --no-package-lock
npm shrinkwrap && mv npm-shrinkwrap.json ../results/9-shrinkwrap.json

#Update patch version of third-party-dep. Update in package.json. npm ci.
cd ../third-party-dep
npm version patch
npm publish --access public
cd ../my-app
perl -i -pe 's/(third-party-dep\": \"\^\d+\.\d+\.)(\d+)/$1.($2 + 1)/e' package.json
npm ci --no-package-lock
npm shrinkwrap && mv npm-shrinkwrap.json ../results/10-shrinkwrap.json

