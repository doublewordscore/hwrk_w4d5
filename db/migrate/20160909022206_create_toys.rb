class CreateToys < ActiveRecord::Migration
  def change
    create_table :toys do |t|
      t.string :name, null: false, unique: true
      t.references :toyable, polymorphic: true, index: true

      t.timestamps
    end
    add_index :toys, :name
  end
end
