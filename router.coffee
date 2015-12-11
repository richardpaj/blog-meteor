ApplicationController = RouteController.extend
  layoutTemplate: 'applicationLayout'
  data: ->
    return Settings.findOne()
  yieldTemplates:
    appHeader:
      to: 'header'

Router.configure
  controller: ApplicationController

Router.route '/',
  name: 'home',
  template: 'home'

Router.route '/admin',
  name: 'admin',
  template: 'admin'

AccountsTemplates.configureRoute 'signIn',
  name: 'login',
  template: 'login',
  path: '/admin/login',
  redirect: ->
    Router.go 'admin'

AccountsTemplates.configureRoute 'signUp',
  name: 'signup',
  template: 'signup',
  path: '/admin/signup',
  redirect: ->
    Router.go 'admin'

Router.plugin 'ensureSignedIn',
  only: ['admin']
