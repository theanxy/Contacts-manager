$(function() {
	$('#content select').change(function() {
		$(this).find('option:selected').each(function() {
			//console.log($(this).attr('name'));
			if ($(this).prev().length) {
				window.location.href = "/cards/"+$(this).attr('name');
			}
		})
	})
});