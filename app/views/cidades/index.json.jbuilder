json.array!(@cidades) do |cidade|
  json.extract! cidade, :id, :cidade_nome, :estado_long, :estado_short
  json.url cidade_url(cidade, format: :json)
end
