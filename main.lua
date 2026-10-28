-- Daily Code launcher.
-- Change CHALLENGE to the folder you want to run, then `love .` from this directory.
local CHALLENGE = "challenges.008_gradebook"

function love.load()
    require(CHALLENGE .. ".main")
end
