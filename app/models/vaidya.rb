class Vaidya < ActiveRecord::Base
   #default_value_for             :stars, 1
   default_scope order("created_at DESC")  
   ajaxful_rateable              :cache_column => :my_cached_rating
   has_and_belongs_to_many       :categories_ds
   has_many                      :contact_docs
   belongs_to                    :user
   has_many                      :enquiries 
   accepts_nested_attributes_for :enquiries
   accepts_nested_attributes_for :contact_docs
   attr_accessible               :categories_d_ids, :name, :qualification, 
                                 :speciality, :affiliation, :awards, :user_id, :user_ids, :vaidya_id, :vaidya_ids,
                                 :contact_docs_attributes
 
   validates_presence_of         :name,  :qualification, 
                                 :speciality, :affiliation, :awards  
 #  before_save                   :defaults
    
   

 
  # def defaults
  
 #  end
  end 
