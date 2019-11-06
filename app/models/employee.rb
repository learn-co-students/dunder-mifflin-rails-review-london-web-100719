class Employee < ApplicationRecord
    belongs_to :dog
    validates :alias, uniqueness: true
    validates :title, uniqueness: true
    validates :first_name, presence: true
    validates :last_name, presence: true

end
