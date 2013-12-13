json.array!(@cards) do |card|
  json.extract! card, :name, :cost, :kind_id, :description
  json.url card_url(card, format: :json)
end
