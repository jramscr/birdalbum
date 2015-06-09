var ready;

var LINK_ADD= '.add_fields';
var LINK_ADD_PERSON_FORM = '.user-link';

ready = function() {
  loadPersonForm();
  searchMatch();
};

function loadPersonForm(){
  ($(LINK_ADD_PERSON_FORM).data("action") == "new") ? new_action() : edit_action();
}

function new_action() {
  $(LINK_ADD).click;
  $(LINK_ADD_PERSON_FORM).click();
  $(LINK_ADD_PERSON_FORM).hide();
}

function edit_action() {
  $(LINK_ADD_PERSON_FORM).click();
  $(LINK_ADD_PERSON_FORM).hide();
}

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
