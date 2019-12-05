checkForm = () =>
  unless $('#person_name').val() == '' || $('#person_age').val() == ''
    $('#submit_button').removeAttr("disabled");

$(document).delegate '#person_name', 'keyup', (e) ->
  checkForm()
$(document).delegate '#person_age', 'keyup', (e) ->
  checkForm()    

$(document).on 'turbolinks:load', ->
  alert('Seja bem vindo!')