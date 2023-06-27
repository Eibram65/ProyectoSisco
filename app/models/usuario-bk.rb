class Usuario < ApplicationRecord
    validates :tipo_persona, :nombre, :identificacion, :f_emision, :f_vencimiento, :correo, :tlf_principal, presence: true
    validate :f_vencimiento_after_f_emision
    def f_vencimiento_after_f_emision
        if f_vencimiento < f_emision
          errors.add("La fecha de emision no puede ser mayor que la de vencimiento")
        end
      end
      
    has_one :identificacion_datos
    has_one :contacto
end

class Identificacion_Dato < ApplicationRecord
    belongs_to :usuarios
end

class Contacto < ApplicationRecord
    belongs_to :usuarios
end