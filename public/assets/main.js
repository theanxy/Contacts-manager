$(function() {
	$('#cards-list').change(function() {
		$(this).find('option:selected').each(function() {
			//console.log($(this).attr('name'));
			window.location.href = "/cards/"+$(this).attr('name');
		})
	})
});