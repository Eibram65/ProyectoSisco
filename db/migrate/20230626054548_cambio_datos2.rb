class CambioDatos2 < ActiveRecord::Migration[7.0]
  def change
    change_column :usuarios, :identificacion, :string
    change_column :usuarios, :tlf_principal, :string
    change_column :usuarios, :tlf_secundario, :string
  end
end
