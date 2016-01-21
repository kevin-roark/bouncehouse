
var THREE = require('three');

var loader = new THREE.JSONLoader();

module.exports = function loadModel(name, callback) {
  if (typeof callback !== 'function') return;

  loader.load(name, function(geometry, materials) {
    callback(geometry, materials);
  });
};
