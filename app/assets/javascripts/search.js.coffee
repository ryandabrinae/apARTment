$ ->
    console.log('hello?')
    $(".search").on("ajax:success", (e, data, status, xhr) ->
        # console.log(data);
        for i in data.artObjects
            pieceHolder = $('<div class="gallery-art">')

            imageSrc = "#{i.webImage.url}"
            image = $('<img class="profiles-img">').attr('src', imageSrc)
            imageHolder = $('<div class="art-box">')
            imageHolder.append(image)
            
            titleHolder = "#{i.title}"
            titleLink = $('<a>').text(titleHolder).attr('href', "search/" + i.objectNumber)
            title = $('<h3>').append(titleLink)

            saveForm = $('<form>')

            pieceHolder.append(title, imageHolder)
            $('.gallery').append(pieceHolder)
    )
