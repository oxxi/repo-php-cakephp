$(function () {
	// body...
	//carga por ajax de las secciones 
	$(".link").on("click",function(e){
		var temp = $(this).attr("rel");
			$("#contenido").html('<img src="../img/ajax-loader.gif"/>');
			$("#contenido").load("../php/"+temp+".php");	
	});
//Seccion de productos
	$(document).on("click","#nav-producto ul li.productos", function(e){
		var produ = $(this).attr("rel");
		$('#nav-producto ul li').removeClass('active');
		$(this).addClass('active');
		$("#contenido-producto").html('<img src="../img/ajax-loader.gif"/>');
		$('#contenido-producto').load('../php/'+produ+'.html')
	});
	$(document).on("click","a.prueba",function(e){
		e.preventDefault();
	  $('#myModal').reveal();
	});
});//fin jquery
