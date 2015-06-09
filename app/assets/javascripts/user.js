var ready;

ready = function() {
  searchMatch();
};

function searchMatch(){
  $('#searchbox').keyup(function (){
    var rex = new RegExp($(this).val(), 'i')

    $('.collaborator-datarow').hide();
    $('.collaborator-datarow').filter(function(){
      var name = $(this).find('.collaborator-fullname').text();

      return rex.test(name);
    }).show();
  });
}

$(document).ready(ready);
$(document).on('page:load', ready);
