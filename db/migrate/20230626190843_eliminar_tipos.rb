class EliminarTipos < ActiveRecord::Migration[7.0]
  def change
    remove_column :identificacion_datos, :type, :string
    remove_column :contacto, :type, :string
  end
end
