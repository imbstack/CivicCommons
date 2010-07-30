$(document).ready(function(){
	$('#event_when').datepicker({});
	$("#event_when").change(function(){
		try {
			var d = Date.parse($("#event_when").val());
			$("#event_when_1i").val(d.getFullYear());
			$("#event_when_2i").val(d.getMonth()+1);
			$("#event_when_3i").val(d.getDate());			
		}
		catch (err) {
		}
	});
});