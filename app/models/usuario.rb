class Usuario < ApplicationRecord
    validates :tipo_persona, :nombre, :identificacion, :f_emision, :f_vencimiento, :correo, :tlf_principal, presence: true
    validate :f_vencimiento_after_f_emision
    def f_vencimiento_after_f_emision
        if f_vencimiento < f_emision
          errors.add("La fecha de emision no puede ser mayor que la de vencimiento")
        end
      end
      
    has_one :identificacion
    has_many :contacto
end

class Identificacion < ApplicationRecord
    belongs_to :usuario
end
class Contacto < ApplicationRecord
    belongs_to :usuario
end