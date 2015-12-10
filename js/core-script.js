var haxeImagesShowing = false;
var unityImagesShowing = false;

$(document).ready(function(){

    $('#imagesHaxeGame').click(function(e) {
        if(haxeImagesShowing === true)
        {
            $('#haxeImages').hide();
            haxeImagesShowing = false;
        }
        else
        {
            $('#haxeImages').show();
            haxeImagesShowing = true;
        }
    });

    $('#imagesUnityGame').click(function(e) {
        if(unityImagesShowing === true)
        {
            $('#unityImages').hide();
            haxeImagesShowing = false;
        }
        else
        {
            $('#unityImages').show();
            unityImagesShowing = true;
        }
    });

});

$("#contactForm").submit(function(event) {
	event.preventDefault();
	submitForm();
    //<div class='webPlayer' id='haxeWebPlayer' style='display: none'></div>
});


function submitForm(){
    // Initiate Variables With Form Content
    var name = $("#name").val();
    var email = $("#email").val();
    var subject = $("#subject").val();
    var message = $("#message").val();
 
    $.ajax({
        type: "POST",
        url: "php/contactForm.php",
        data: "name=" + name + "&email=" + email + "&subject" + subject + "&message=" + message,
        success : function(text){
            if (text == "success"){
                formSuccess();
            }
        },
        error : function(text) {
        	formSuccess();
        }
    });
}

function formSuccess(){
    $( "#msgSubmit" ).removeClass( "hidden" );
}

