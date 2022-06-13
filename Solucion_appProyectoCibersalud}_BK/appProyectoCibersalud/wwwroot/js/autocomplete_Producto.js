$(document).ready(function () {
	$("#buscar_producto").autocomplete({
		source: function (request, response) {
			$.ajax({
				type: "POST",
				url: "/Home/ProductoXNombre" ,
				dataType: "json",
				data: {
					"nombre": request.term
				},
				success: function (data) {
					response($.map(data, function (item) {
						return {
							value: item.idproducto,
							label: item.nombreproducto,
						};
					}));
				},
			});
		},
		select: function (event, ui) {
			$("#buscar_producto").val(ui.item.label);
			window.location.href = getContextPath() + '/Home/Producto/' + ui.item.value;
			return false;
		},
		change: function (event, ui) {
			$("#buscar_producto").val(ui.item.label);
			window.location.href = getContextPath() + '/Home/Producto/' + ui.item.value;
			return false;
		}
	});
});
		
    function getContextPath() {
        //if (window.location.host !== "localhost:8080") { 
            return window.location.protocol + "//" + window.location.host;
        //} else 
       // {
         //   return window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2));
        //}
    }