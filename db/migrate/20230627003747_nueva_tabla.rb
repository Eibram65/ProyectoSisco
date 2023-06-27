class NuevaTabla < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios, id: false do |t|
      t.string :tipo_persona, null: false
      t.string :identificacion, primary_key: true, null: false
      t.string :nombre, null: false
      t.string :f_emision, null: false
      t.string :f_vencimiento, null: false
      t.string :correo, null: false
      t.string :tlf_principal, null: false
      t.string :tlf_secundario

      t.timestamps
    end 
  end
end
