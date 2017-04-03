$(document).ready(() => {



  $('.art-modal').append($('<h1>').addClass('modal-text').text('View My Art'));



// $('.links').append('');
$($('.art-modal')).click(function(){
  // $('.art-modal').removeClass('.art-modal')
  $('.art-modal').toggleClass('art-modal-off');
})
$('.room-modal').append($('<h1>').addClass('modal-text').text('View My Rooms'));


$($('.room-modal')).click(function(){
  // $('.art-modal').removeClass('.art-modal')
  $('.room-modal').toggleClass('art-modal-off');
})

})
