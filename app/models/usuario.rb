class Usuario < ApplicationRecord
    validates :tipo_persona, :nombre, :identificacion, :f_emision, :f_vencimiento, :correo, :tlf_principal, presence: true
    validates :tlf_principal, length: { is: 11 }
end
