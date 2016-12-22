
ldap=require('./ldap.coffee')

module.exports = (robot) ->
  robot.respond /exec rundeck/i, (res) ->
    role = 'TechOps'
    user = res.message.user.email_address
    ldap.hasUserRole role,user, (cb) ->
      if cb
        res.reply "you have #{role} role. Please proceed"
      else      
        res.reply "Sorry, only  #{role} can do this activity."

  robot.respond /exec jenkins/i, (res) ->
    role = 'DevOps'
    user = res.message.user.email_address
    ldap.hasUserRole role,user, (cb) ->
      if cb
        res.reply "you have #{role} role. Please proceed"
      else      
        res.reply "Sorry, only  #{role} can do this activity."

  robot.respond /exec nagios/i, (res) ->
    role = 'TechOps'
    user = res.message.user.email_address
    ldap.hasUserRole role,user, (cb) ->
      if cb
        res.reply "you have #{role} role. Please proceed"
      else      
        res.reply "Sorry, only  #{role} can do this activity."


  robot.respond /assign to me/i, (res) ->
    user = res.message.user
    res.reply 'your channel : '+ res.message.room 
    console.log user
    res.reply 'your name : ' + res.message.user.name
