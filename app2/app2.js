(function() {
  var Hello;

  Hello = (function() {
    function Hello() {}

    Hello.prototype.world = function() {};

    return Hello;

  })();

  console.log('world');

}).call(this);

/*
//@ sourceMappingURL=app2.js.map
*/