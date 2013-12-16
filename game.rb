# encoding: utf-8
require_relative 'grid'
require 'matrix'
require 'pry'

class Game

  attr_reader :grid

  def initialize(initial_state)
    @grid = Grid.new(initial_state)
  end

  def play
    render @grid

    loop do
      render @grid = @grid.tik
      sleep 0.1
    end
  end

  def render(grid)
    system 'clear'
    grid.each do |row|
      row.each do |v|
        print v == 0 ? ' ' : '•'
      end
      print "\n"
    end
  end
end

grid = Grid.new Matrix.build(30, 80){rand(2).to_i}.to_a

game = Game.new(grid)

game.play