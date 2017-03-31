$(document).ready(() => {
    
    
    $(".color").click((e) => {
        $(".couch").css("fill", $(e.target).attr("value"));
        $("#furniture_color").attr("value", $(e.target).attr("value"));
    });

    const createSelector = () => {
        roomType = $("h1").attr("name");
        if(roomType === "Living Room"){
            select = $("<select>").addClass("furniture-selector");
            defaultOption = $("<option>").attr("disabled","disabled").attr("selected", "selected").text("Select a Couch");
            select.append(defaultOption);
            for(i = 1 ; i < 4 ; i++){
                option = $("<option>").attr("name", "couch" + i);
                option.attr("value", "couch" + i);
                option.text("Couch" + i);
                select.append(option);
            }
            $(".select-holder").append(select);
        }
    }

    createSelector();

    const listenFurnSelection = () => {
        $(".furniture-selector")
        .change(() => {
            $(".furniture-selector option:selected").each(function(){
                selection = $(this).attr("value");
                $(".couch").addClass("hidden");
                $("#" + selection).removeClass("hidden");
            });
        });
    }

    listenFurnSelection();
});