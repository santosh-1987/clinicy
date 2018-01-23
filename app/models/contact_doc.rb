class ContactDoc < ActiveRecord::Base
  belongs_to                    :vaidya
  attr_accessible               :address_line_1,:address_line_2,:address_line_3,:state,:city,
                                :country,:contact_no,:fax_no,:website_url,:vaidya_ids,:ids
                                              
  validates_numericality_of     :contact_no, :fax_no    
  validates_length_of           :fax_no, :in => 7..32
  validates_length_of           :contact_no, :in => 7..32   
  validates_format_of           :website_url, :with => /^(https?:\/\/)?[a-z0-9]+([-.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix, :on => :create                               

end
