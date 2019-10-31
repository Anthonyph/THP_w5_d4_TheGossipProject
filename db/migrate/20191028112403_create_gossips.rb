class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.text :gossip
      t.timestamps

      
      t.belongs_to :user, index: true
    end
  end
end
