
command: "python earth-view.widget/load_image.py"
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