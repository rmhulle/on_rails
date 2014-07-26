json.array!(@check_ins) do |check_in|
  json.extract! check_in, :id, :user_id, :cidade_id, :descricao, :detalhes, :validade
  json.url check_in_url(check_in, format: :json)
end
