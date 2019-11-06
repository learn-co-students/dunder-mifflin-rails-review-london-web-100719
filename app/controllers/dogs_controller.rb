class DogsController < ApplicationController

    def index

        @dogs = Dog.all.sort_by{|dog| dog.employees.size}

    end

    def show

        @dog = Dog.find(params[:id])
        @employees = @dog.employees

    end

    def new

        @dog = Dog.new
        @employees = Employee.all

    end

    def create

        @dog = Dog.create(dog_params)

    end

    def edit

        @dog = Dog.find(params[:id])
        @employees = Employee.all

    end

    def update

        @dog = Dog.find(params[:id])
        @dog.update(dog_params)

    end

    private

    def dog_params

        params.require(:dog).permit!

    end

end