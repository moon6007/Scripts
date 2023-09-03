
local robloxapi = {}

-- Define the GetXcsrfToken function
function robloxapi.GetXcsrfToken(cookie)
    -- Create headers table with the cookie
    local headers = {
        ["Cookie"] = cookie,
    }

    -- Send a request to obtain the CSRF token
    local auth_response = request({
        Url = "https://auth.roblox.com/v1/logout",
        Method = "POST",
        Headers = headers,
    })

  
        local csrfToken = auth_response.Headers["x-csrf-token"]
   
      
    end
end

return robloxapi
