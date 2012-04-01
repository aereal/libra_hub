class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :name
      t.string :slug
      t.references :language

      t.timestamps
    end
    add_index :libraries, :language_id
  end
end
