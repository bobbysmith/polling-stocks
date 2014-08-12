json.array!(@stocks) do |stock|
  json.extract! stock, :id, :name, :price
  json.url stock_url(stock, format: :json)
end
