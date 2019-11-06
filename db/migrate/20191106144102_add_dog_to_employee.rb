class AddDogToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :dog, :integer
  end
end
