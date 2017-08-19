class AddGuestIdToContributions < ActiveRecord::Migration[5.0]
  def change
    add_reference :contributions, :guest, index: true
    remove_column :contributions, :person, :string
  end
end
