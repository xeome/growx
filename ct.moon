main = assert(loadfile("main.lua"))! --load main file

--///////// form stuff /////////
colors = {
	default:   "$00211C12"
	highlight: "$00342D1D"
	red:       "$006F69F0"
}


sethover = (object,enter,leave) -> --sets onenter and onleave events
	object.OnMouseEnter = (sender) ->
		sender.color = enter
	object.OnMouseLeave = (sender) ->
		sender.color = leave

--hover
sethover form.minimize,   colors.highlight,  colors.default

sethover form.closeicon,  colors.red,        colors.default

sethover form.menu1,      colors.highlight,  colors.default


--drag events
form.background.OnMouseDown = ->
	form.DragNow!
form.titlebar.OnMouseDown = ->
	form.DragNow!


form.show!