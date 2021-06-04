document.addEventListener(
  
  "DOMContentLoaded", e => {
    let modal_open = document.getElementById("sign-up-modal-open-btn");
    modal_open.onclick = function () {
      $('#sign-up-modal-overlay').fadeIn();
      document.getElementById('sign-up-modal-close-btn').onclick = function () {
        $('#sign-up-modal-overlay').fadeOut();
      };
    };
  },
  false

);