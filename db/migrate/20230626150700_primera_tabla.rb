class PrimeraTabla < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios, id: false do |t|
      t.integer :id_usuario, primary_key: true, null: false
      t.string :tipo_persona, null: false
      t.string :identificacion, null: false
      t.string :nombre, null: false
      t.string :id_contacto, null: false
      t.timestamps
    end

    create_table :identificacion_datos, id: false do |t|
      t.string :identificacion, primary_key: true, null: false
      t.string :f_emision, null: false
      t.string :f_vencimiento, null: false
      t.string :tipo_documento, null: false

      t.timestamps
    end

    create_table :contacto, id: false do |t|
      t.integer :id_contacto, primary_key: true, null: false
      t.string :correo, null: false
      t.string :tlf_principal, null: false
      t.string :tlf_secundario

      t.timestamps
    end

    add_foreign_key :usuario, :identificacion_datos, column: :identificacion
    add_foreign_key :usuario, :contacto, column: :id_contacto
  end
end