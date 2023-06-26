class NuevaBase < ActiveRecord::Migration[7.0]
  def change
    remove_column :usuarios, :tipo_persona
    remove_column :usuarios, :nombre
    remove_column :usuarios, :identificacion
    remove_column :usuarios, :f_emision
    remove_column :usuarios, :f_vencimiento
    remove_column :usuarios, :correo
    remove_column :usuarios, :tlf_principal
    remove_column :usuarios, :tlf_secundario
    remove_column :usuarios, :created_at
    remove_column :usuarios, :updated_at
  end
end
