#Major bump third party dep
cd third-party-dep
npm version major
npm publish --access public


#Major bump third party dep
cd ../third-party-subdep
npm version major
npm publish --access public

#Major bump n-express
cd ../n-express
npm version major
npm publish --access public

#major bump n-ui
cd ../n-ui
npx npm-check-updates -u
npm version major
npm publish --access public

#major bump my-app
cd ../my-app
npx npm-check-updates -u
npm version major
npm publish --access public

#go home
cd ..
