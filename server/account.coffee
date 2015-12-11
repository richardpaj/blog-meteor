Meteor.methods
  'registerUser': (username, email, password) ->
    Accounts.createUser
      username: username
      email: email
      password: password
