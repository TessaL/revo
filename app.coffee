# Import file "revo"
sketch = Framer.Importer.load("imported/revo@2x", scale: 1)
# Import file "revo"

ViewController = require 'ViewController'
view  =  new ViewController
	initialView: song_page
share_panel2.opacity = 0
share_group.opacity = 0


#finger.opacity = 0.5
flashP1 = new Animation flash,
	opacity: 0.9
	backgroundColor: "#fff"
	options:
			time: 0.22
			curve: Bezier.easeOut
			
flashP2 = flashP1.reverse()

song_page.onTap ->
	flashP1.start()
	flashP1.onAnimationEnd ->
		flashP2.start()
		
share_panel_img.opacity=0

flashP2.onAnimationEnd ->
	view.switchInstant(song_page2)
	share_panel_img.animate
		opacity: 1
		y: 346
		options:
			time: 0.50
			curve: Bezier.ease
			
share_panel_img.onAnimationEnd ->
	share_panel_img.onTap ->
		share_panel2.animate
			y: 174
			opacity: 1
			options:
				time: 0.40
				curve: Bezier.ease
		share_group.animate
			y: 334
			opacity: 1
			options:
				time: 0.40
				curve: Bezier.ease
		share_panel_img.animate
			opacity: 0
			y: 350
			options: 
				time: 0.1
	
			
	if share_panel_img.y < 365		
		tester.animate
			x: 50
			options:
				time: 2
				curve: Bezier.ease

tester.onAnimationEnd ->
	if share_panel_img.y < 365 
		share_panel_img.animate
		opacity: 0
		view.fadeIn(song_page)

revo_bg_1.onTap ->
	share_panel_img.animate
		opacity: 0		
	view.fadeIn(song_page)
	
	
tester2.onTap ->
		view.fadeIn(sketch.step3)

sketch.message_sent.opacity = 0

sketch.message_sent.opacity = 0
sketch.message_sent.y = 324
sketch.tester3.onTap ->
	view.fadeIn(sketch.step4)
	sketch.message_sent.animate
		opacity: 1
		y: 107
		options:
			time: 0.4
			curve: Bezier.ease
	

