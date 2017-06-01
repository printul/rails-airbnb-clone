
$('#tableFilterSelector').on('change', function() {
  $('tr').show();
  if ($('#tableFilterSelector')[0].value !== "None") {
    var arrToHide = [];
    $('tr td:nth-child(2) a').each(function(index) {
      var status = $(this)[0].text.trim();
      var filter = $('#tableFilterSelector')[0].value.trim();
      if(status !== filter) {
        arrToHide.push(index + 1);
      }

    });
   arrToHide.reverse().forEach(function(value) {
    $('tr').eq(value).hide();
   });
  }
});
