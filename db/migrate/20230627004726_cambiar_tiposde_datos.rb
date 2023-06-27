class CambiarTiposdeDatos < ActiveRecord::Migration[7.0]
  def change
    change_column :usuarios, :f_emision, :date, using: 'f_emision::date'
    change_column :usuarios, :f_vencimiento, :date, using: 'f_emision::date'
  end
end
