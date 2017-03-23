class Article < ActiveRecord::Base
   belongs_to :user
   validates :title, presence: true 
   validates :description, presence: true 
   validates :user_id, presence: true
   def self.search(search)
   where("title LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%") 
   end
    
end

