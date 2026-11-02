-- Daily Code launcher.
-- Change CHALLENGE to the folder you want to run, then `love .` from this directory.
local CHALLENGE = "challenges.010_table_drills"

function love.load()
    require(CHALLENGE .. ".main")
end
