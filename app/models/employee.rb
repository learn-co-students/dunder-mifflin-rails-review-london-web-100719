class Employee < ApplicationRecord
    belongs_to :dog

    validates :first_name, length: {minimum: 2}
    validates :last_name, length: {minimum: 2}
    validates :office, length: {minimum: 3}
    validates :img_url, length: {minimum: 3}
    validates :alias, uniqueness: true, length: {minimum: 1}
    validates :title, uniqueness: true, length: {minimum: 1}
    
    def name

        "#{self.first_name} #{self.last_name}"
        
    end
    
end