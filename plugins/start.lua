local function send_api_msg(msg, receiver, text, disable_web_page_preview, markdown) 
  local api_key = '189164628:AAGtgTwNbR1WWxjsW7XSKYA5dLgwHiW3TTk'
  local url_api = 'https://api.telegram.org/bot'..api_key..'/sendMessage?chat_id='..receiver..'&text='..URL.escape(text) 
  if disable_web_page_preview == true then 
url_api = url_api..'&disable_web_page_preview=true' 
  end 
  if markdown == 'md' then 
    url_api = url_api..'&parse_mode=Markdown' 
  elseif markdown == 'html' then 
    url_api = url_api..'&parse_mode=HTML'
  end 
  local dat, res = https.request(url_api) 
  if res == 400 then 
    reply_msg(msg.id, '*Error!*', ok_cb, true) 
  end 
end 
local function run(msg,matches)
if matches[1]:lower() == '/start' then
if msg.to.type == 'chat' then
send_api_msg(msg, '-'..msg.to.id, "", true, 'md')
elseif msg.to.type == 'channel' then
send_api_msg(msg, '-100'..msg.to.id, "", true, 'md')
elseif msg.to.type == 'user' then
send_api_msg(msg, msg.from.id, "AJAB", true, 'md')
end
end
end
return {
patterns = {
"^(/[Ss]tart)$"
},
run = run
}
