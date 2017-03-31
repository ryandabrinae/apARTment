$(document).ready(() => {
    
    // .couch{

		// fill: <%= @furniture["color"] ? @furniture["color"] : @arts_room.art["color1"] ? @arts_room.art["color1"] : "#5B245B" %> ;
    $(".color").click((e) => {
        for(i = 0 ; i < 4 ; i ++){
            $(".couch"+i+"-fill").css("fill", $(e.target).attr("value"));
        }
        $("#furniture_color").attr("value", $(e.target).attr("value"));
    });

    const furnitureMatch = () => {
        if ($("#type_of_furniture")){
            furnitureType = $("#furniture_type_number").attr("value");
            $("#"+furnitureType).removeClass("hidden");
            $("."+furnitureType+"-fill").css("fill", $("#furniture_color").attr("value"));
        }
    }

    furnitureMatch();

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
                $("#furniture_type_number").attr("value", selection);
            });
        });
    }

    listenFurnSelection();
});