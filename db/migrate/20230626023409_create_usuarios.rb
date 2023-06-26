class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    t.string "tipo_persona"
    t.string "nombre"
    t.string "identificacion"
    t.date "f_emision"
    t.date "f_vencimiento"
    t.string "correo"
    t.string "tlf_principal"
    t.string "tlf_secundario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
