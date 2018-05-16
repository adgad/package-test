# Fresh install
cd my-app
rm -rf node_modules
rm -rf package-lock.json
npm install --no-package-lock >> ../results/no-package-lock/1-output.txt
npm shrinkwrap && mv npm-shrinkwrap.json ../results/no-package-lock/1-shrinkwrap.json
cp package.json ../results/no-package-lock/1-package.json
npm ls >> ../results/no-package-lock/1-ls.txt


##### No Package-lock.json ######

#Update patch version of n-express. npm install.
cd ../n-express
npm version patch
npm publish --access public && sleep 10

cd ../my-app
npm install --no-package-lock >> ../results/no-package-lock/2-output.txt
npm shrinkwrap && mv npm-shrinkwrap.json ../results/no-package-lock/2-shrinkwrap.json
cp package.json ../results/no-package-lock/2-package.json
npm ls >> ../results/no-package-lock/2-ls.txt


#Update patch version of n-express. npm update.
cd ../n-express
npm version patch
npm publish --access public && sleep 10
cd ../my-app
npm update --no-package-lock >> ../results/no-package-lock/3-output.txt
npm shrinkwrap && mv npm-shrinkwrap.json ../results/no-package-lock/3-shrinkwrap.json
cp package.json ../results/no-package-lock/3-package.json
npm ls >> ../results/no-package-lock/3-ls.txt


#Update patch version of n-express. npm ci.
cd ../n-express
npm version patch
npm publish --access public && sleep 10
cd ../my-app
npm ci --no-package-lock >> ../results/no-package-lock/4-output.txt
npm shrinkwrap && mv npm-shrinkwrap.json ../results/no-package-lock/4-shrinkwrap.json
cp package.json ../results/no-package-lock/4-package.json
npm ls >> ../results/no-package-lock/4-ls.txt

#Update minor version of n-ui. npm install.
cd ../n-ui
npm version minor
npm publish --access public && sleep 10
cd ../my-app
npm install --no-package-lock >> ../results/no-package-lock/5-output.txt
npm shrinkwrap && mv npm-shrinkwrap.json ../results/no-package-lock/5-shrinkwrap.json
cp package.json ../results/no-package-lock/5-package.json
npm ls >> ../results/no-package-lock/5-ls.txt

#Update minor version of n-ui. npm update.
cd ../n-ui
npm version minor
npm publish --access public && sleep 10
cd ../my-app
npm update --no-package-lock >> ../results/no-package-lock/6-output.txt
npm shrinkwrap && mv npm-shrinkwrap.json ../results/no-package-lock/6-shrinkwrap.json
cp package.json ../results/no-package-lock/6-package.json
npm ls >> ../results/no-package-lock/6-ls.txt

#Update minor version of n-ui. npm ci.
cd ../n-ui
npm version minor
npm publish --access public && sleep 10
cd ../my-app
npm ci --no-package-lock >> ../results/no-package-lock/7-output.txt
npm shrinkwrap && mv npm-shrinkwrap.json ../results/no-package-lock/7-shrinkwrap.json
cp package.json ../results/no-package-lock/7-package.json
npm ls >> ../results/no-package-lock/7-ls.txt

#Update patch version of third-party-dep. Update in package.json. npm install.
cd ../third-party-dep
npm version patch
npm publish --access public && sleep 10
cd ../my-app
perl -i -pe 's/(third-party-dep\": \"\^\d+\.\d+\.)(\d+)/$1.($2 + 1)/e' package.json
npm install --no-package-lock >> ../results/no-package-lock/8-output.txt
npm shrinkwrap && mv npm-shrinkwrap.json ../results/no-package-lock/8-shrinkwrap.json
cp package.json ../results/no-package-lock/8-package.json
npm ls >> ../results/no-package-lock/8-ls.txt

#Update patch version of third-party-dep. Update in package.json. npm update.
cd ../third-party-dep
npm version patch
npm publish --access public && sleep 10
cd ../my-app
perl -i -pe 's/(third-party-dep\": \"\^\d+\.\d+\.)(\d+)/$1.($2 + 1)/e' package.json
npm update --no-package-lock >> ../results/no-package-lock/9-output.txt
npm shrinkwrap && mv npm-shrinkwrap.json ../results/no-package-lock/9-shrinkwrap.json
cp package.json ../results/no-package-lock/9-package.json
npm ls >> ../results/no-package-lock/9-ls.txt

#Update patch version of third-party-dep. Update in package.json. npm ci.
cd ../third-party-dep
npm version patch
npm publish --access public && sleep 10
cd ../my-app
perl -i -pe 's/(third-party-dep\": \"\^\d+\.\d+\.)(\d+)/$1.($2 + 1)/e' package.json
npm ci --no-package-lock >> ../results/no-package-lock/10-output.txt
npm shrinkwrap && mv npm-shrinkwrap.json ../results/no-package-lock/10-shrinkwrap.json
cp package.json ../results/no-package-lock/10-package.json
npm ls >> ../results/no-package-lock/10-ls.txt

