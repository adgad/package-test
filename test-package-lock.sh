# Fresh install
cd my-app
rm -rf node_modules
rm -rf package-lock.json
npm install
cp package-lock.json ../results/1-lock.json

##### With Package-lock.json ######

#Update patch version of n-express. npm install.
cd ../n-express
npm version patch
npm publish --access public
cd ../my-app
npm install
cp package-lock.json ../results/2-lock.json

#Update patch version of n-express. npm update.
cd ../n-express
npm version patch
npm publish --access public
cd ../my-app
npm update
cp package-lock.json ../results/3-lock.json

#Update patch version of n-express. npm ci.
cd ../n-express
npm version patch
npm publish --access public
cd ../my-app
npm ci
cp package-lock.json ../results/4-lock.json

#Update minor version of n-ui. npm install.
cd ../n-ui
npm version minor
npm publish --access public
cd ../my-app
npm install
cp package-lock.json ../results/5-lock.json

#Update minor version of n-ui. npm update.
cd ../n-ui
npm version minor
npm publish --access public
cd ../my-app
npm update
cp package-lock.json ../results/6-lock.json

#Update minor version of n-ui. npm ci.
cd ../n-ui
npm version minor
npm publish --access public
cd ../my-app
npm ci
cp package-lock.json ../results/7-lock.json

#Update patch version of third-party-dep. Update in package.json. npm install.
cd ../third-party-dep
npm version patch
npm publish --access public
cd ../my-app
perl -i -pe 's/(third-party-dep\": \"\^\d+\.\d+\.)(\d+)/$1.($2 + 1)/e' package.json
npm install
cp package-lock.json ../results/8-lock.json

#Update patch version of third-party-dep. Update in package.json. npm update.
cd ../third-party-dep
npm version patch
npm publish --access public
cd ../my-app
perl -i -pe 's/(third-party-dep\": \"\^\d+\.\d+\.)(\d+)/$1.($2 + 1)/e' package.json
npm update
cp package-lock.json ../results/9-lock.json

#Update patch version of third-party-dep. Update in package.json. npm ci.
cd ../third-party-dep
npm version patch
npm publish --access public
cd ../my-app
perl -i -pe 's/(third-party-dep\": \"\^\d+\.\d+\.)(\d+)/$1.($2 + 1)/e' package.json
npm ci
cp package-lock.json ../results/10-lock.json

