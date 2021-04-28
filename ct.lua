local main = assert(loadfile("main.lua"))()
local colors = {
  default = "$00211C12",
  highlight = "$00342D1D",
  red = "$006F69F0"
}
local sethover
sethover = function(object, enter, leave)
  object.OnMouseEnter = function(sender)
    sender.color = enter
  end
  object.OnMouseLeave = function(sender)
    sender.color = leave
  end
end
sethover(form.minimize, colors.highlight, colors.default)
sethover(form.closeicon, colors.red, colors.default)
sethover(form.menu1, colors.highlight, colors.default)
form.background.OnMouseDown = function()
  return form.DragNow()
end
form.titlebar.OnMouseDown = function()
  return form.DragNow()
end
return form.show()
