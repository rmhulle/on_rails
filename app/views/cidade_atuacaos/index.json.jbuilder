json.array!(@cidade_atuacaos) do |cidade_atuacao|
  json.extract! cidade_atuacao, :id, :user_id, :cidade_id
  json.url cidade_atuacao_url(cidade_atuacao, format: :json)
end
