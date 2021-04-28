local main = assert(loadfile("main.lua"))()
local colors = {
  default = "$00211C12",
  highlight = "$00342D1D",
  red = "$006F69F0"
}
local highlight
highlight = function(x)
  x.color = colors.highlight
end
local default
default = function(x)
  x.color = colors.default
end
form.background.OnMouseDown = function()
  return form.DragNow()
end
form.titlebar.OnMouseDown = function()
  return form.DragNow()
end
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
return form.show()
