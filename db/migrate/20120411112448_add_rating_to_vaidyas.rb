class AddRatingToVaidyas < ActiveRecord::Migration
  def self.up
    add_column :vaidyas, :rating, :decimal, :default => 0, :precision => 6, :scale => 2
  end

  def self.down
    remove_column :vaidyas, :rating
  end
end
