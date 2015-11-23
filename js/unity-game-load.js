var u;

$(document).ready(function() {
	//loadMarsClickerUnity();
	$('#webUnityGame').click(function(e) {
        var parentElement = $(this).parent();
        loadMarsClickerUnity();
        $('#unityPlayer').show('slow');
    });	
   	$('#imagesUnityGame').click(function(e) {
        var parentElement = $(this).parent();
        var unityImages = 
        "<iframe class='imgur-album' width='100%' height='600' frameborder='0' src='http://imgur.com/a/z0rnU/embed'></iframe>"
        //$(this).parent().after("<p style='display: none'>this is some nice text!</p>");
        $(unityImages).insertAfter(parentElement).show('slow');
    });	
    $('#installUnity').click(function(e) {
    	installUnityWebPlayer();
    });

    //href="http://unity3d.com/webplayer/"
});

function loadMarsClickerUnity()
{
    u = new UnityObject2();
    u.initPlugin(jQuery("#unityPlayer")[0], "Web Version.unity3d");
}

function installUnityWebPlayer()
{
	u.installPlugin();
}