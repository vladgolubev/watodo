Meteor.methods
  regUser: (log, pass)->
    Accounts.createUser
      username: log
      password: pass
