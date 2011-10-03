// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery(function(){
	jQuery('ul.sf-menu').superfish();
});

function toggleblock(showHideDiv, switchTextDiv, showText, hideText) {
	var ele = document.getElementById(showHideDiv);
	var text = document.getElementById(switchTextDiv);
	if(ele.style.display == "block") {
    		ele.style.display = "none";
		text.innerHTML = showText ? showText : "Show";
  	}
	else {
		ele.style.display = "block";
		text.innerHTML = hideText ? hideText : "Hide";
	}
}

$(function() {
		$( "#edge_source_name" ).autocomplete({
			source: function( request, response ) {
				$.ajax({
					url: "http://mick.does-it.net/nodes.json",
					dataType: "json",
					data: {						
						term: request.term
					},
					success: function( data ) {
						response( $.map( data, function( item ) {
							return {
								label: item.node.name + " (" + item.node.id + ")",
								value: item.node.name
							}
						}));
					}
				});
			},
			open: function() {
				$( this ).removeClass( "ui-corner-all" ).addClass( "ui-corner-top" );
			},
			close: function() {
				$( this ).removeClass( "ui-corner-top" ).addClass( "ui-corner-all" );
			}
		});
	});
	

$(function() {
		$( "#edge_sink_name" ).autocomplete({
			source: function( request, response ) {
				$.ajax({
					url: "http://mick.does-it.net/nodes.json",
					dataType: "json",
					data: {						
						term: request.term
					},
					success: function( data ) {
						response( $.map( data, function( item ) {
							return {
								label: item.node.name + " (" + item.node.id + ")",
								value: item.node.name
							}
						}));
					}
				});
			},
			open: function() {
				$( this ).removeClass( "ui-corner-all" ).addClass( "ui-corner-top" );
			},
			close: function() {
				$( this ).removeClass( "ui-corner-top" ).addClass( "ui-corner-all" );
			}
		});
	});



