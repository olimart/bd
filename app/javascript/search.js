(function() {
  var ready;

  ready = function() {
    var $form, $input, data, previousTimeout, search, searchDone;
    previousTimeout = null;
    $form = $('#global-search');
    $input = $form.find('input');

    data = function() {
      var out;
      out = {};
      out[$input.attr('name')] = $input.val().replace(/,/, '.');
      return out;
    };

    search = function() {
      return $.get($form.attr('action'), data()).done(searchDone);
    };

    searchDone = function(response) {
      var content;
      content = $(response).find('#books');
      return $('#books').replaceWith(content);
    };

    return $input.keyup(function() {
      if (previousTimeout) {
        clearTimeout(previousTimeout);
      }
      return previousTimeout = setTimeout(search, 800);
    });
  };

  $(document).on('turbolinks:load', ready);

}).call(this);
