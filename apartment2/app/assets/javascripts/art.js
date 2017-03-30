$('#new_art').submit((e) => {
  console.log("IT IS WORKING ");
  // e.preventDefault();
  // searchArt(response);
  // const artPiece = $('.').val();
  // // console.log(artPiece);
  // $.ajax({
  //   url: '/profile',
  //   method: 'GET',
  //   success: (response) =>{
  //     // console.log(response);
  //     // // console.log(response);
  //     response.forEach((response) =>{
  //       searchArt(response);
  //     });

  //   }, error: (err) =>{
  //     console.log(err);
  //   }
  // });
});

// const searchArt = function(response) {
//   const newImage = response.url;
//   appendArt(newImage);
// };

// const appendArt = function(newImage){
//   $('.artDiv').remove();
//   const NewArtDiv = $('<div class="artDiv">');
//   const addButton = $('<button class="add-button"> Add New Beer </button>');
//   const image = $('<img>');
//   image.attr('src', newImage);
//   NewArtDiv.append(addButton);
//   NewArtDiv.append(image);
//   $(body).append(NewArtDiv);
// };

