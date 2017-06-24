class AddIndexToUsuariosLogin < ActiveRecord::Migration[5.1]
  def change
     add_index :usuarios, :login, unique: true
 end
end
