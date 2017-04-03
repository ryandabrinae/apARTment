(function() {
  $(function() {
    console.log('bitches');
    return $(".search").on("ajax:success", function(e, data, status, xhr) {
      var i, image, imageSrc, j, len, pieceHolder, ref, results, saveForm, title, titleHolder, titleLink;
      ref = data.artObjects;
      results = [];
      for (j = 0, len = ref.length; j < len; j++) {
        i = ref[j];
        pieceHolder = $('<div class = "artList">');
        imageSrc = "" + i.webImage.url;
        image = $('<img>').attr('src', imageSrc);
        titleHolder = "" + i.title;
        titleLink = $('<a>').text(titleHolder).attr('href', "search/" + i.objectNumber);
        title = $('<h3>').append(titleLink);
        saveForm = $('<form>');
        pieceHolder.append(title, image);
        results.push($('.search-results').append(pieceHolder));
      }
      return results;
    });
  });

}).call(this);
