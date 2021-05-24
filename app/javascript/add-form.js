$(document).on('turbolinks:load', function() {

  const btn_clone = $('.btn-clone');
  const btn_remove = $('.btn-remove');

  btn_clone.on("click",(function() {
      const text = $('.room-user-form').last();

      text
        .clone()
        .val('')
        .insertAfter(text);

      if ($('.room-user-form').length >= 2) {
          $(btn_remove).show();
      }

  }));

  btn_remove.on("click",(function() {

      $('.room-user-form').last().remove();

      if ($('.room-user-form').length < 2) {
          btn_remove.hide();
      }

  }));
});