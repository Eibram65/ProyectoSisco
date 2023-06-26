json.extract! usuario, :id, :tipo_persona, :nombre, :identificacion, :f_emision, :f_vencimiento, :correo, :tlf_principal, :tlf_secundario, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
