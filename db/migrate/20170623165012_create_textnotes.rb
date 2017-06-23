class CreateTextnotes < ActiveRecord::Migration[5.1]
  def change
    create_table :textnotes do |t|
      t.text :content
      t.integer :usuario_id

      t.timestamps
    end
  end
end
