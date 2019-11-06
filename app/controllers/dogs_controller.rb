class DogsController < ApplicationController

    def index
        @sorted_dogs = Dog.sorted_by_most_owners
        @dogs = Dog.all
    end

    def new
        @dog = Dog.new
    end

    def create
        dog = Dog.create(dog_params)
        redirect_to dog
    end

    def show
        @dog = Dog.find(params[:id])
    end

    def edit
        @dog = Dog.find(params[:id])
    end

    def update
        dog = Dog.update(dog_params)
        redirect_to dog
    end

    private

    def dog_params
        params.require(:dog).permit(:name, :breed, :age)
    end

end
