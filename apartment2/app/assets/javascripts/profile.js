$(document).ready(() => {


$('.art-modal').append($('<button>').addClass('modal-button').text('Select'));
$('.room-modal').append($('<button>').addClass('modal-button').text('Select'));

$($(this)).click(function(){
  $('.art-modal').attr('display','none');
})

})
