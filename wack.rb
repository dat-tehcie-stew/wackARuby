require 'gosu'

class WhackARuby < Gosu::Window
  def initialize()
    super(1920,1080,true)
    self.caption = "Whack A Ruby"
    @rubyImage = Gosu::Image.new('ruby.png')
    @hammerImage = Gosu::Image.new('hammer.png')
    @rubyX = 200
    @rubyY = 200
    @rubyWidth = 50
    @rubyHeight = 43
    @rubyVelX = 5
    @rubyVelY = 5
    puts "Window Created"
  end

  def draw()
    @rubyImage.draw(@rubyX - @rubyWidth / 2, @rubyY - @rubyHeight / 2, 1)
    puts "Ruby Drawen"
  end

  def update()
    @rubyX += @rubyVelX
    @rubyY += @rubyVelY
    @rubyVelX *= -1 if @rubyX + @rubyWidth / 2 > 1920 || @rubyX - @rubyWidth / 2 < 0
    @rubyVelY *= -1 if @rubyY + @rubyHeight / 2 > 1080 || @rubyY - @rubyHeight / 2 < 0
  end
end

game = WhackARuby.new()
game.show()
