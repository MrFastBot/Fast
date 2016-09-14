local function run(msg, matches)
local text = "Test"
local user = "user#id"..msg.from.id
if matches[1] = "help" then
send_larg_msg(user, text, ok_cb, false)
end
end
return {
patterns = {
"^(help)$"
},
run = run
}
