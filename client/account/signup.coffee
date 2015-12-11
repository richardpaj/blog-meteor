Template.signup.events
  'submit form': (e) ->
    e.preventDefault()

    username = $('[name=username]').val()
    email = $('[name=email]').val()
    password = $('[name=password]').val()

    Meteor.call 'registerUser', username, email, password

    # Automatically log in the user, probably needs some checks whether
    # the registration was successful
    # TODO: error checking
    Meteor.loginWithPassword(username, password)

    Router.go 'admin'
