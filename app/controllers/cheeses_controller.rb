class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def best
    cheeses = Cheese.where(["is_best_seller = ?", true])
    render json: cheeses
  end

end
