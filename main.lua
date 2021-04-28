local cheats = require("res.cheats")
local main = { }
main.drag = function()
  return main.DragNow()
end
main.main = function()
  return print("loaded")
end
return main
