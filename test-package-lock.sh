# Fresh install
cd my-app
rm -rf node_modules
rm -rf package-lock.json
npm install
cp package-lock.json ../results/package-lock/1-lock.json
cp package.json ../results/package-lock/1-package.json
npm ls >> ../results/package-lock/1-ls.txt

##### With Package-lock.json ######

#Update patch version of n-express. npm install.
cd ../n-express
npm version patch
npm publish --access public
cd ../my-app
npm install
cp package-lock.json ../results/package-lock/2-lock.json
cp package.json ../results/package-lock/2-package.json
npm ls >> ../results/package-lock/2-ls.txt

#Update patch version of n-express. npm update.
cd ../n-express
npm version patch
npm publish --access public
cd ../my-app
npm update
cp package-lock.json ../results/package-lock/3-lock.json
cp package.json ../results/package-lock/3-package.json
npm ls >> ../results/package-lock/3-ls.txt

#Update patch version of n-express. npm ci.
cd ../n-express
npm version patch
npm publish --access public
cd ../my-app
npm ci
cp package-lock.json ../results/package-lock/4-lock.json
cp package.json ../results/package-lock/4-package.json
npm ls >> ../results/package-lock/4-ls.txt

#Update minor version of n-ui. npm install.
cd ../n-ui
npm version minor
npm publish --access public
cd ../my-app
npm install
cp package-lock.json ../results/package-lock/5-lock.json
cp package.json ../results/package-lock/5-package.json
npm ls >> ../results/package-lock/5-ls.txt

#Update minor version of n-ui. npm update.
cd ../n-ui
npm version minor
npm publish --access public
cd ../my-app
npm update
cp package-lock.json ../results/package-lock/6-lock.json
cp package.json ../results/package-lock/6-package.json
npm ls >> ../results/package-lock/6-ls.txt

#Update minor version of n-ui. npm ci.
cd ../n-ui
npm version minor
npm publish --access public
cd ../my-app
npm ci
cp package-lock.json ../results/package-lock/7-lock.json
cp package.json ../results/package-lock/7-package.json
npm ls >> ../results/package-lock/7-ls.txt

#Update patch version of third-party-dep. Update in package.json. npm install.
cd ../third-party-dep
npm version patch
npm publish --access public
cd ../my-app
perl -i -pe 's/(third-party-dep\": \"\^\d+\.\d+\.)(\d+)/$1.($2 + 1)/e' package.json
npm install
cp package-lock.json ../results/package-lock/8-lock.json
cp package.json ../results/package-lock/8-package.json
npm ls >> ../results/package-lock/8-ls.txt

#Update patch version of third-party-dep. Update in package.json. npm update.
cd ../third-party-dep
npm version patch
npm publish --access public
cd ../my-app
perl -i -pe 's/(third-party-dep\": \"\^\d+\.\d+\.)(\d+)/$1.($2 + 1)/e' package.json
npm update
cp package-lock.json ../results/package-lock/9-lock.json
cp package.json ../results/package-lock/9-package.json
npm ls >> ../results/package-lock/9-ls.txt

#Update patch version of third-party-dep. Update in package.json. npm ci.
cd ../third-party-dep
npm version patch
npm publish --access public
cd ../my-app
perl -i -pe 's/(third-party-dep\": \"\^\d+\.\d+\.)(\d+)/$1.($2 + 1)/e' package.json
npm ci
cp package-lock.json ../results/package-lock/9-lock.json
cp package.json ../results/package-lock/9-package.json
npm ls >> ../results/package-lock/9-ls.txt

