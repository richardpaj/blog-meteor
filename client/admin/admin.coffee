Template.admin.events
  'click .logout': (e) ->
    e.preventDefault()
    Meteor.logout()
    Router.go 'home'
