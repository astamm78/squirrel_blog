$(document).ready(function() {

  // Edit Page AJAX
  $('a#edit_post').on('click', function(event) {
    var url = $(this).attr('href');
    event.preventDefault();
    $.get( url, function(data) {
      $('.container').html(data);
    });
  });

});