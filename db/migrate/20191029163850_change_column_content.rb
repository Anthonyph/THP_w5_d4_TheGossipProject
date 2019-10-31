class ChangeColumnContent < ActiveRecord::Migration[5.2]
  def change
    rename_column :gossips, :gossip, :content
  end
end
