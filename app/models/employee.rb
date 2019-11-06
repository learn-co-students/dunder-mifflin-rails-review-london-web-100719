class Employee < ApplicationRecord
    belongs_to :dog

    validates :alias, uniqueness: true
    validates :title, uniqueness: true 

    validates :first_name, uniqueness: true
    validates :last_name, uniqueness: true 
end
