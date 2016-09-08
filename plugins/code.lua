local function run(msg,matches)
local text = matches[1]
   send_api_msg(msg, get_receiver_api(msg), "`"text"`", true, 'md')
   end
return {
patterns = {
"^[/!#]code (.*)$"
},
run = run 
}
