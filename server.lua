-- ############################################
-- --------------------------------------------
-- 3dme : /me command but its 3D printed
-- Author : Elio
-- Server side
-- --------------------------------------------
-- ############################################

-- --------------------------------------------
-- Functions
-- --------------------------------------------

-- OBJ : transform a table into a string (using spaces)
-- PARAMETERS :
--		- tab : the table to transform
local function TableToString(tab)
	local str = ""
	for i = 1, #tab do
		str = str .. " " .. tab[i]
	end
	return str
end

-- --------------------------------------------
-- Commands
-- --------------------------------------------

RegisterCommand('me', function(source, args)
    local text = "* the person" .. TableToString(args) .. " *"
    TriggerClientEvent('3dme:shareDisplay', -1, text, source)
end)