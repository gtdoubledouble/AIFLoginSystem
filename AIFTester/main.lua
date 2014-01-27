-----------------------------------------------------------------------------------------
--
-- Various tests for AIF
--
-----------------------------------------------------------------------------------------

crypto = require("crypto")
require("noobhub")
hub = noobhub.new({ server = "192.210.143.132"; port = 1337; }); 

-- Test logging in and getting credentials
hub:subscribe({
    channel = "hello-world";  
    callback = function(message)

		if(message.action == "get_credentials_success") then
			-- display or prepare the profile information
			print( "Get credentials success" )
			for index, info in pairs(message) do
				if( index ~= "action" ) then 
					print(index, info)
				end
			end
		end
	end
});

hub:publish({
    message = {
	    action = "get_credentials",
	    username = "kaitagsd", -- some registered account username
	}
});
