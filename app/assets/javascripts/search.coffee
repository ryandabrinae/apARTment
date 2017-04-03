$ ->
    $(".search").on("ajax:success", (e, data, status, xhr) ->
        # console.log(data);
        for i in data.artObjects
            pieceHolder = $('<div class = "artList">')
            imageSrc = "#{i.webImage.url}"
            image = $('<img>').attr('src', imageSrc)
            titleHolder = "#{i.title}"
            titleLink = $('<a>').text(titleHolder).attr('href', "search/" + i.objectNumber)
            title = $('<h3>').append(titleLink)

            saveForm = $('<form>')


            pieceHolder.append(title, image)
            $('.search-results').append(pieceHolder)
    )

    # currentColor = "#5B245B"

    # $(".color").click((e) ->
    #     $(".couch")
    #         .css
    #             fill: $(e.target).attr 'value'
    #     $("#furniture_color").attr 'value', $(e.target).attr 'value'
    # )
