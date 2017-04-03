$(document).ready(() => {
    console.log('helo');
    const furnitureMatch = () => {

        // If there is a value in the form ID-ing the furniture
        if ($("#furniture_type_number").attr("value")){
            
            // Finds the specific couch/bed (e.g. couch1)
            furnitureType = $("#furniture_type_number").attr("value");

            // Shows the furniture the user has saved
            $("#"+furnitureType).removeClass("hidden");

            // Gets only the furniture type by removing the number from the end
            allType = furnitureType.substring(0, furnitureType.length - 1)
            
            // Number of different optiosn we have per type
            numOfFurniture = 3;

            // Changes all their fill to the selected
            for(i = 0 ; i <= numOfFurniture ; i++){
                $("."+allType+i+"-fill").css("fill", $("#furniture_color").attr("value"));
            }
        } else {
            // If there is not user data, color will be the first one suggested by the painting
            // If there is no suggestion from the painting, default to grey
            firstColor = $($('.color')[0]).attr("value") ? $($('.color')[0]).attr("value") : "grey";

            // Figures out if there should be a couch or bed by the room name (i.e. Living room => couch, Bedroom => bed)
            roomType = $("h1").attr("name");

            if(roomType === "Living Room"){
                furnitureType = "couch";
            } else if (roomType === "Bedroom") {
                furnitureType = "bed";
            }

            numOfFurniture = 3;

            for(i = 0 ; i <= numOfFurniture ; i++){
                $("."+furnitureType+i+"-fill").css("fill", firstColor );
            }
        }
    }

    const createSelector = () => {
        roomType = $("h1").attr("name");
        select = $("<select>").addClass("furniture-selector");
        if(roomType === "Living Room"){
            $(".room").addClass("living");
            defaultOption = $("<option>").attr("disabled","disabled").attr("selected", "selected").text("Select a Couch");
            select.append(defaultOption);
            for(i = 1 ; i < 4 ; i++){
                option = $("<option>").attr("name", "couch" + i);
                option.attr("value", "couch" + i);
                option.text("Couch" + i);
                select.append(option);
            }
        } else {
            $(".room").addClass("bedroom");
            defaultOption = $("<option>").attr("disabled","disabled").attr("selected", "selected").text("Select a Bed");
            select.append(defaultOption);
            for(i = 1 ; i < 4 ; i++){
                option = $("<option>").attr("name", "bed" + i);
                option.attr("value", "bed" + i);
                option.text("Bed" + i);
                select.append(option);
            }
        }
        $(".select-holder").append(select);
    }

    const listenFurnSelection = () => {
        $(".furniture-selector")
        .change(() => {
            $(".furniture-selector option:selected").each(function(){
                selection = $(this).attr("value");
                $(".furniture").addClass("hidden");
                $("#" + selection).removeClass("hidden");
                $("#furniture_type_number").attr("value", selection);
            });
        });
    }


    furnitureMatch();
    createSelector();
    listenFurnSelection();

    $(".color").click((e) => {
        roomType = $("h1").attr("name");
        if(roomType === "Living Room"){
            for(i = 0 ; i < 4 ; i ++){
                $(".couch"+i+"-fill").css("fill", $(e.target).attr("value"));
            }
        } else {
            for(i = 0 ; i < 4 ; i ++){
                $(".bed"+i+"-fill").css("fill", $(e.target).attr("value"));
            }
        }
        $("#furniture_color").attr("value", $(e.target).attr("value"));
    });
});

