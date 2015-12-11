Template.login.events
  'submit form': (e) ->
    e.preventDefault()

    username = $('[name=username]').val()
    password = $('[name=password]').val()

    Meteor.loginWithPassword(username, password)
