Template.signup.events
  'submit form': (e) ->
    e.preventDefault()

    username = $('[name=username]').val()
    email = $('[name=email]').val()
    password = $('[name=password]').val()

    Meteor.call 'registerUser', username, email, password
