$("#contactForm").submit(function(event) {
	event.preventDefault();
	submitForm();
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
        data: "name=" + name + "&email=" + email + "&subject" + subject "&message=" + message,
        success : function(text){
            if (text == "success"){
                formSuccess();
            }
        }
        error : function(text) {
        	formSuccess();
        }
    });
}

function formSuccess(){
    $( "#msgSubmit" ).removeClass( "hidden" );
}