require 'discordrb'
require "csv"

bot = Discordrb::Bot.new token: 'ODEzNjQ3MjkyOTQxNzI5ODEz.YDSWFw.lHsvQr9KUvyrLbJg--wkxj3RQyY'
data = CSV.read('buki.csv')
bukishu = CSV.read('bukishu.csv')

bot.message(content: 'ブキ') do |event|
    channel = event.user.voice_channel
    users = channel.users
    for num in 0..users.length do
        event.respond "#{users[num].name} ： #{data[rand(0..data.length)][2]}"
    end
end

bot.message(content: '武器') do |event|
    channel = event.user.voice_channel
    users = channel.users
    for num in 0..users.length do
      event.respond "#{users[num].name} ： #{data[rand(0..data.length)][2]}"
    end
end

bot.message(content: '武器種') do |event|
    event.respond "#{bukishu[rand(0..bukishu.length)]}"
end

bot.message(content: 'シューター') do |event|
    channel = event.user.voice_channel
    users = channel.users
    for num in 0..users.length do
        event.respond "#{users[num].name} ： #{data[rand(9..27)][2]}"
    end
end

bot.message(content: 'シューター2') do |event|
    channel = event.user.voice_channel
    users = channel.users
    for num in 0..users.length do
        event.respond "#{users[num].name} ： #{data[rand(28..45)][2]}"
    end
end

bot.message(content: 'シェルター') do |event|
  channel = event.user.voice_channel
  users = channel.users
  for num in 0..users.length do
    event.respond "#{users[num].name} ： #{data[rand(0..8)][2]}"
  end
end

bot.message(content: 'スピナー') do |event|
    channel = event.user.voice_channel
    users = channel.users
    for num in 0..users.length do
        event.respond "#{users[num].name} ： #{data[rand(46..58)][2]}"
    end
end

bot.message(content: 'スロッシャー') do |event|
    channel = event.user.voice_channel
    users = channel.users
    for num in 0..users.length do
        event.respond "#{users[num].name} ： #{data[rand(59..71)][2]}"
    end
end

bot.message(content: 'チャージャー') do |event|
    channel = event.user.voice_channel
    users = channel.users
    for num in 0..users.length do
        event.respond "#{users[num].name} ： #{data[rand(72..90)][2]}"
    end
end

bot.message(content: 'フデ') do |event|
    channel = event.user.voice_channel
    users = channel.users
    for num in 0..users.length do
        event.respond "#{users[num].name} ： #{data[rand(91..97)][2]}"
    end
end

bot.message(content: 'ブラスター') do |event|
    channel = event.user.voice_channel
    users = channel.users
    for num in 0..users.length do
        event.respond "#{users[num].name} ： #{data[rand(98..113)][2]}"
    end
end

bot.message(content: 'マニューバー') do |event|
    channel = event.user.voice_channel
    users = channel.users
    for num in 0..users.length do
        event.respond "#{users[num].name} ： #{data[rand(114..127)][2]}"
    end
end

bot.message(content: 'シューター2') do |event|
    channel = event.user.voice_channel
    users = channel.users
    for num in 0..users.length do
        event.respond "#{users[num].name} ： #{data[rand(128..138)][2]}"
    end
end

bot.message(content: '姫') do |event|
    channel = event.user.voice_channel
    users = channel.users
    queen1 = rand(0..users.length)
    a = [0..users.length].delete(queen1)
    queen2 = rand(a)
    event.respond "姫は #{users[queen1].name} と #{users[queen2].name} です"
end

bot.run