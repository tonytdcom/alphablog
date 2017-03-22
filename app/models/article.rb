class Article < ActiveRecord::Base
   
   validates :title, presence: true 
   validates :description, presence: true 
   
   def self.search(search)
   where("title LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%") 
   end
    
end

