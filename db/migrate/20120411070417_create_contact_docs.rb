
class CreateContactDocs < ActiveRecord::Migration
  def change
    create_table :contact_docs do |t|
      t.string     :address_line_1
      t.string     :address_line_2
      t.string     :address_line_3
      t.string     :state
      t.string     :city
      t.string     :country
      t.integer    :contact_no
      t.integer    :fax_no
      t.string     :website_url
      t.timestamps
    end
  end
end
