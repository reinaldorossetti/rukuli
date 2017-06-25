require 'java'
require 'rukuli'


Rukuli::Config.run do |config|
  config.image_path = "#{Dir.pwd}/images/"
  config.logging = false
end

#screen = Rukuli::Screen.new
#screen.click(10, 10) # should open your apple menu

# exec('calc.exe')
# sleep 7
start = Time.now
app = Rukuli::App.new("Calculator")
app.focus
app.window.click('1.png') if app.window.find('1.png')
app.window.click('2.png') if app.window.find('2.png')
app.window.click('soma.png') if app.window.find('soma.png')
app.window.click('1.png') if app.window.find('2.png')
app.window.click('igual.png') if app.window.find('igual.png')
test = app.window.find_all('13.png')
if test.length == 1
  puts "Sucesso!"
end
puts Time.now - start
