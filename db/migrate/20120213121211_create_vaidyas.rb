class CreateVaidyas < ActiveRecord::Migration
  def change
    create_table   :vaidyas do |t|
      t.string     :name
      
      t.string     :qualification
      t.string     :speciality
      t.string     :affiliation
      t.string     :awards

      t.timestamps
    end
  end
end
