class AddFieldUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :email, :string
    add_column :users, :description, :text
    add_column :users, :birthdate, :datetime
  end
end
