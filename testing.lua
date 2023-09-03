local robloxapi = {}

function  robloxapi.GetXcsrfToken(theheaders)
	local auth_response = request({
		Url = "https://auth.roblox.com/v1/logout",
		Method = "POST",
		Headers = theheaders
	})
	
	return auth_response.Headers["x-csrf-token"]
end)


return robloxapi
