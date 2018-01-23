class AddIdToContactDoc < ActiveRecord::Migration
  def change
    add_column :contact_docs, :vaidya_id, :integer
  end
end
