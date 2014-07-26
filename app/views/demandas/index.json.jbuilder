json.array!(@demandas) do |demanda|
  json.extract! demanda, :id, :cidade_id, :user_id, :descricao, :validade, :cidade_origem, :correspondente, :status
  json.url demanda_url(demanda, format: :json)
end
