(function() {
  var ready;

  ready = function() {
    var modal_loading;
    modal_loading = "<div class=\"modal-dialog\">\n    <div class=\"modal-content\">\n      <div class=\"modal-body\">\n        <div class=\"spinner\"></div>\n      </div>\n    </div>\n  </div>\n</div>";

    return $('body').on('hidden.bs.modal', '.modal', function() {
      $(this).removeData('bs.modal');
      return $(this).html(modal_loading);
    });
  };

  $(document).on('turbolinks:load', ready);
}).call(this);
