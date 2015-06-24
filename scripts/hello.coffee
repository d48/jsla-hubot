# Description:
#   Hubot, be polite and say hello.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Hello or Good Day make hubot say hello to you back
#   Good Morning makes hubot say good morning to you back
robotUsername = 'jsbot'

hellos = [
    "Well hello there, %",
    "Hey %, Hello!",
    "Marnin', %",
    "Good day, %",
    "Good 'aye!, %"
]
mornings = [
    "Good morning, %",
    "Good morning to you too, %",
    "Good day, %",
    "Good 'aye!, %"
]
module.exports = (robot) ->
    robot.hear /(hello|good( [d'])?ay(e)?)/i, (msg) ->
        console.log 'this is msg', msg
        if msg.message.user.name isnt robotUsername
            hello = msg.random hellos
            msg.send hello.replace "%", msg.message.user.name

    robot.hear /(^(good )?m(a|o)rnin(g)?)/i, (msg) ->
        if msg.robot.name not robotUsername
            hello = msg.random mornings
            msg.send hello.replace "%", msg.message.user.name
