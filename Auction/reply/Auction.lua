msg_reply.Upload_Pics = {	--该条msg_reply的id，唯一对应，同名覆盖
    keyword = {
        prefix = "&拍卖投稿",
    },
    echo = {
        lua = "reply_contribution"	--调用文件名对应lua
    }
}