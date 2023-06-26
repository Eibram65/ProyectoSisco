class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.string :tipo_persona
      t.string :nombre
      t.integer :identificacion
      t.date :f_emision
      t.date :f_vencimiento
      t.string :correo
      t.integer :tlf_principal
      t.integer :tlf_secundario

      t.timestamps
    end
  end
end
