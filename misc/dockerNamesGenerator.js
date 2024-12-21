// https://www.npmjs.com/package/docker-names
let dockerNames = require('docker-names');
console.log(dockerNames.getRandomName());

// Confirm where node is looking for modules:
// console.log(require.resolve.paths('docker-names'));
