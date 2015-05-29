# get random image from list of 100

# Command changed by David Brooks - https://github.com/djbrooks111
# In the old command, refresh did not cause the random number to change
# This new command uses BASH's random and so it is updated each time
# the command is rerun/refreshed

command: "num=$(($RANDOM % 100 + 1)); curl -so earth-view.widget/images/img.jpg earthview.withgoogle.com/images/wallpaper/${num}.jpg"

#command: "curl -so earth-view.widget/images/img.jpg earthview.withgoogle.com/images/wallpaper/"+ Math.floor(Math.random() * (101 - 1) + 1) + ".jpg"


# Set the refresh frequency (milliseconds).
refreshFrequency: 200000

style: """
  top: 0%
  left: 0%
  color: #fff
  
  .earth
    height: 100%9
    width: 100%
    position: absolute
    z-index:-1
"""

render: -> """
<div id='background'></div>
"""

# Update the rendered output.
update: (output, domEl) ->
  mydiv = $(domEl).find('div')
  html = ''
  
  html += "<div class='earth'>"
  html += "<img src='earth-view.widget/images/img.jpg' >"
  html += "</div>"
  
  # Set the output
  mydiv.html(html)