class Dog < ApplicationRecord
    has_many :employees

    def self.sorted_by_most_owners
        Dog.all.sort_by {|dog| dog.employees.size }.reverse
    end

end
