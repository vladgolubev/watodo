Template.Authorization.events
  'click #do-auth': (e, tmpl)->
    Meteor.loginWithPassword tmpl.$("#login").val(), tmpl.$("#password").val(), () ->
      Router.go '/'

  'click #do-reg': (e, tmpl)->
    Meteor.call "regUser", tmpl.$("#login").val(), tmpl.$("#password").val(), ->
      Meteor.loginWithPassword tmpl.$("#login").val(), tmpl.$("#password").val(), () ->
        Router.go '/'
