require 'discordrb'
bot = Discordrb::Bot.new token: 'ODEzNjQ3MjkyOTQxNzI5ODEz.YDSWFw.lHsvQr9KUvyrLbJg--wkxj3RQyY'
bot.message(content: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.run