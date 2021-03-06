
class SuburbsController < ApplicationController

  def index
    @suburbs = Suburb.all
  end

  def results
    @results = Suburb.selection(0, params[:max_price].to_i, params[:state])
  end

end
