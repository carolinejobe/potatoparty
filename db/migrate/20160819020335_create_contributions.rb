class CreateContributions < ActiveRecord::Migration[5.0]
  def change
    create_table :contributions do |t|
      t.string :food
      t.string :person
      t.timestamps
    end
  end
end
