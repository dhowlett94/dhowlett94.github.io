$(document).ready(function(){
    $('#flashHaxeGame').click(function(e) {
        var parentElement = $(this).parent();
        var flashGame = 
        "<object type='application/x-shockwave-flash' data='games/haxe/flash/bin/ProjectEcho.swf' class='webPlayer' id='haxeWebPlayer'><param name='movie' value='../games/haxe/flash/bin/ProjectEcho.swf'/><param name='quality' value='high' /></object>"
        //$(this).parent().after("<p style='display: none'>this is some nice text!</p>");
        $(flashGame).insertAfter(parentElement).show('slow');
    });
    $('#imagesHaxeGame').click(function(e) {
        var parentElement = $(this).parent();
        var haxeImages = 
        "<iframe class='imgur-album' width='100%' height='600' frameborder='0' src='http://imgur.com/a/z0rnU/embed'></iframe>"
        //$(this).parent().after("<p style='display: none'>this is some nice text!</p>");
        $(haxeImages).insertAfter(parentElement).show('slow');
    });
    $('#windowsHaxeGame').click(function(e) {
        var parentElement = $(this).parent();
        var haxeImages = 
        "<iframe class='imgur-album' width='100%' height='600' frameborder='0' src='http://imgur.com/a/z0rnU/embed'></iframe>"
        //$(this).parent().after("<p style='display: none'>this is some nice text!</p>");
        $(haxeImages).insertAfter(parentElement).show('slow');
    });

});

$("#contactForm").submit(function(event) {
	event.preventDefault();
	submitForm();
    //<div class='webPlayer' id='haxeWebPlayer' style='display: none'></div>
});


function onFlashHaxeClick() {
    alert("here");
    $(this).after("<p>this is some nice text!</p>");
}

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

