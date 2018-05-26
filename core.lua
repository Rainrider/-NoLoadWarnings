-- code provided by Nevcairiel
UIParent:UnregisterEvent("LUA_WARNING")
local f = CreateFrame("Frame")
f:SetScript("OnEvent",
function(f, ev, warnType, warnMessage)
	if warnMessage:match("^Couldn't open") or warnMessage:match("^Error loading") or warnMessage:match("^%(null%)") then
		return
	end
	geterrorhandler()(warnMessage)
end)
f:RegisterEvent("LUA_WARNING")
