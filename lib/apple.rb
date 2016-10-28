require 'positionable'

module Kiss
  class Apple
    include Positionable
    def initialize
      @image = Gosu::Image.new("media/apple.png")
      move
      @kissed = false
      @kissed_counter = 0
      @scale = 1.0
      @z = 1
    end

    def kissed!
      return if kissed?
      @kissed = true
      @image = Gosu::Image.new('media/flower_power.png')
      @scale = 0.0
      @z = 2
    end

    def kissed?
      @kissed
    end

    def update
      if kissed?
        @kissed_counter += 1
        @scale = (@kissed_counter/180.0)
      end
    end

    def move
      @x = rand(800 - width)
      @y = rand(800 - height)
    end

    def draw  
      kissed_x = width * -@scale / 2
      kissed_y = height * -@scale / 2
      @image.draw(@x + kissed_x, @y + kissed_y, @z, @scale, @scale) if @kissed_counter < 180 
    end
  end
end