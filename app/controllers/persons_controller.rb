class PersonsController < ApplicationController
  respond_to :json

  def update_stocks
    stocks = Person.find(params[:id]).stocks.map do |stock|
      stock.price = rand(-1000..1000)
      stock.attributes
    end

    render :json => stocks
  end
end
