local status, autotag = pcall(require, "autotag")
if (not status) then return end

autotag.setup({})
