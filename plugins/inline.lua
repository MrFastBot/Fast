local function run(msg, matches)
if matches[1] == "inline" and matches[2] and matches[3] and matches[4] then
  local text = matches[2]
  local link_text = matches[3]
  local link = matches[4]
    local keyboard = {} keyboard.inline_keyboard = {
   {
                {text = link_text, url = link},
      },
    }
 send_api_keyboard(msg, get_receiver_api(msg), text, keyboard)
end
end
return { 
patterns = {
"^/(inline) (.*)%%(.*)%(.*)$",
}, 
run = run
 }
