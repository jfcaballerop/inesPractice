class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :login
      t.string :name

      t.timestamps
    end
  end
end
