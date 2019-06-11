json.extract! endereco, :id, :rua, :bairro, :cidade, :estado, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
