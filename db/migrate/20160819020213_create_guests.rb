class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.string :name
      t.integer :russet_potato
      t.integer :sweet_potato
      t.string :message
    end
  end
end
