var ready;

var LINK_ADD = '.add_fields';
var LINK_ADD_PERSON_FORM = '.user-link';

ready = function() {
  loadPersonForm();
};

function loadPersonForm(){
  if ($(LINK_ADD_PERSON_FORM).data("action") == "new") {
    $(LINK_ADD).click();
    $(LINK_ADD_PERSON_FORM).click();
    $(LINK_ADD_PERSON_FORM).hide();
  } else {
    $(LINK_ADD_PERSON_FORM).hide();
  }
}

$(document).ready(ready);
$(document).on('page:load', ready);
