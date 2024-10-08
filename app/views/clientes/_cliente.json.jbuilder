json.extract! cliente, :id, :nombre, :telefono, :email, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
