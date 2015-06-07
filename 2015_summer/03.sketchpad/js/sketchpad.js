var n = 1;

$(document).ready(function () {
	$('input').on('keydown', function () {
		setTimeout(function () {
      $('span').html($('input').val());
    }, 0);
	});

	function createGrid(n) {
		var width = ($('#grid_container').width() - n * 2) / n;
		for (var i = 1; i <= n * n; i++) {
			$('#grid_container').append('<div class = "grid"></div>');
			$('.grid').css({'width': width, 'height': width, 'display': 'inline-block'});
		};
	};

	createGrid(n);

	$('#grid_container').on('mouseenter', '.grid', function () {
	// $('.grid').on('mouseenter', function () {
		$(this).toggleClass('highlighted');
	});

	$('#create').click(function () {
		n = $('input').val();
		if (n <= 20) {
			$('#grid_container').find('.grid').remove();
			createGrid(n);			
		} else {
			alert("Please put a number between 1 and 20.");
		};
		

	});


	$('#clear').click(function() {
		$('#grid_container').find('.grid').removeClass('highlighted');
	});


});
