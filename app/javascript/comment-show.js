$(function(){

  $('.comment-btn-group').on('click', function(){
    var i = $('.comment-btn-group').index(this);
    if ($('.comment-wrapper').eq(i).css('display') == 'block') {
      $('.comment-wrapper').eq(i).slideUp();
    } else {
      $('.comment-wrapper').eq(i).slideDown();
    }
  });

});