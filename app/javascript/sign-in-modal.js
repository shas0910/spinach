document.addEventListener(
  
  "DOMContentLoaded", e => {
    let modal_open = document.getElementById("sign-in-modal-open-btn");
    modal_open.onclick = function () {
      $('#sign-in-modal-overlay').fadeIn();
      document.getElementById('sign-in-modal-close-btn').onclick = function () {
        $('#sign-in-modal-overlay').fadeOut();
      };
    };
  },
  false

);