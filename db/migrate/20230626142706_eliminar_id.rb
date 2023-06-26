class EliminarId < ActiveRecord::Migration[7.0]
  def change
    remove_column :usuarios, :id
  end
end
