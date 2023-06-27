class Usuario < ApplicationRecord
    validates :tipo_persona, :nombre, :tipo_documento, :identificacion, :f_emision, :f_vencimiento, :correo, :tlf_principal, presence: true

end