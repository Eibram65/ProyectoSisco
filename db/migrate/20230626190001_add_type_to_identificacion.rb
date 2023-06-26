class AddTypeToIdentificacion < ActiveRecord::Migration[7.0]
  def change
    add_column :identificacion_datos, :type, :string
    add_column :contacto, :type, :string
  end
end
