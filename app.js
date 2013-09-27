(function() {
  var Hello;

  Hello = (function() {
    function Hello() {}

    Hello.prototype.world = function() {};

    return Hello;

  })();

  console.log('hello');

}).call(this);

/*
//@ sourceMappingURL=app.js.map
*/