$ ->
    console.log('bitches')
    $(".search").on("ajax:success", (e, data, status, xhr) ->
        # console.log(data);
        for i in data.artObjects
            pieceHolder = $('<div class="results">')
            imageSrc = "#{i.webImage.url}"
            image = $('<img class="results-img">').attr('src', imageSrc)
            titleHolder = "#{i.title}"
            titleLink = $('<a>').text(titleHolder).attr('href', "search/" + i.objectNumber)
            title = $('<h3>').append(titleLink)

            saveForm = $('<form>')


            pieceHolder.append(title, image)
            $('.search-results').append(pieceHolder)
    )
