Meteor.methods
  regUser: (log, pass)->
    Accounts.createUser
      username: log
      password: pass
  pushQuery: (val, lat, lng)->
    JSON.parse(HTTP.get("https://api.foursquare.com/v2/venues/search?client_id=ADAWX4ECKLX0OZZ2WSD3PCUTXPIF22FUF4QRVYMMNVLXMRJG&client_secret=WOJR2TAR0ZH0KXCOIDGFPI12DTLW0O13ZW0JQSEINVSWCJUF&v=20140806&ll=#{lat},#{lng}&query=#{val}").content)