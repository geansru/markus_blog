json.array!(@markus) do |marku|
  json.extract! marku, :id, :post, :weight, :height, :month, :photo
  json.url marku_url(marku, format: :json)
end
