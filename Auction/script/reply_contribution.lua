local text = string.match(msg.fromMsg,"^[%s]*(.-)[%s]*$",#"&拍卖"+1)

-- http = require("socket.http")

if string.find(text,"image") then
    image = string.sub(text, string.find(text,"image")-4)
end

if image:match("%[CQ:image(.*)http") then
    imageHttp = image:match("https?://(.*)%]")
else
    imageHttp = "https://gchat.qpic.cn/gchatpic_new/0/0-0-"..image:match("{(.*)}"):gsub("-","").."/0"
end

return imageHttp

