json.extract! usuario, :id, :login, :passwd, :name, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
