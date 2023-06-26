class LlavesF < ActiveRecord::Migration[7.0]
  def change
    change_column :usuarios, :id_contacto, :integer, using: "id_contacto::integer"
    add_foreign_key :usuarios, :identificacion_datos, column: :identificacion, primary_key: :identificacion
    add_foreign_key :usuarios, :contacto, column: :id_contacto, primary_key: :id_contacto
  end
end
