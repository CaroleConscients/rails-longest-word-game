class PagesController < ApplicationController

  def game
    @grid = Array.new(9) { ('A'..'Z').to_a[rand(26)] }
  end
  # 1. render the page with a new random grid of words
  #2. render the page with the html form to write your guess
  #below the word grid (param <input type="hidden")

  def score
    @guess = params[:guess]
    @grid = params[:grid]
    correct_answer = @guess.split('').all? { |letter | @guess.count(letter) <= @grid.count(letter)}
      if correct_answer
        @score = "You win"
      else
        @score = "You loose"
      end
  end
  #compute and display your score
end
