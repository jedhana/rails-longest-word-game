require_relative "../../lib/longest.rb"

class GamesController < ApplicationController
  def new
    @letters = generate_grid(10)

  end

  def score
    @result = run_game(params[:attempt], params[:grid], params[:start].to_time.round, Time.now)
  end
end
