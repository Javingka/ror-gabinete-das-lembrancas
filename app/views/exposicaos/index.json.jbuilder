json.array!(@exposicaos) do |exposicao|
  json.extract! exposicao, :id, :pais, :cidade, :datas
  json.url exposicao_url(exposicao, format: :json)
end
