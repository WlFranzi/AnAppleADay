require 'forwardable'

module Kiss
  module Positionable
    attr_reader :x, :y  
    alias :top :y
    alias :left :x

    extend Forwardable

    def_delegators :@image, :height, :width

    def bottom
      y + height  
    end

    def right
      x + width
    end
  end
end