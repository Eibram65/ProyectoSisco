class AddTipoDocumento < ActiveRecord::Migration[7.0]
  def change
    add_column :usuarios, :tipo_documento, :string
  end
end
