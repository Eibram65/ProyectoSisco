class DropTabla < ActiveRecord::Migration[7.0]
  def change
    drop_table :usuarios
    drop_table :identificacion_datos
    drop_table :contacto
  end
end
