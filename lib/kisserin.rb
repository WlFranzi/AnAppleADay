require 'positionable'

module Kiss
  class Kisserin
    attr_reader :score
    include Positionable
    def initialize(x, y)
      @image = @image_right = Gosu::Image.new('media/kisserin.png')
      @image_left = Gosu::Image.new('media/kisserin_flipped.png')
      @image
      @x = x
      @y = y
      @score = 0
    end

    def turn_left
      @x -= 3
      @image = @image_right
    end

    def turn_right
      @x += 3
      @image = @image_left
    end

    def accelerate
      @y -= 3
    end

    def deccelerate
      @y += 3
    end

    def  move
      @x %= 800
      @y %= 800
    end

    def collides?(apple)
      apple.top < bottom &&
      apple.bottom > top &&
      apple.left < right &&
      apple.right > left 
    end

    def score
      @score
    end


    def increment_score
      @score += 1
    end


    def draw
      @image.draw(@x, @y, 1) if @score < 101
    end
  end
end