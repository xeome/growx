main = assert(loadfile("main.lua"))!
colors = {
	default: "$00211C12"
	highlight: "$00342D1D"
	red: "$006F69F0"
}



highlight = (x) ->
	x.color = colors.highlight
default = (x) ->
	x.color = colors.default

form.background.OnMouseDown = ->
	form.DragNow!
form.titlebar.OnMouseDown = ->
	form.DragNow!

sethover = (object,enter,leave) ->
	object.OnMouseEnter = (sender) ->
		sender.color = enter
	object.OnMouseLeave = (sender) ->
		sender.color = leave

sethover(form.minimize,colors.highlight,colors.default)
sethover(form.closeicon,colors.red,colors.default)




form.show!