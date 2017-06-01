
$('#bookingsSelector').on('change', function() {
  $('tr').show();
  if ($('#bookingsSelector')[0].value !== "None") {
    var arrToHide = [];
    $('tr td:last-child a').each(function(index) {
      var status = $(this)[0].text;
      var filter = $('#bookingsSelector')[0].value;
      if(status !== filter) {
        arrToHide.push(index + 1);
      }

    });
   arrToHide.reverse().forEach(function(value) {
    $('tr').eq(value).hide();
   });
  }
});
