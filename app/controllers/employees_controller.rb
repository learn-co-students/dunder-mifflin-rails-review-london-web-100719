class EmployeesController < ApplicationController

    def index

        @employees = Employee.all

    end

    def show

        @employee = Employee.find(params[:id])

    end

    def new

        @employee = Employee.new
        @dogs = Dog.all

    end

    def create

        # flash[:errors] ||= []

        @employee = Employee.new(employee_params)

        if @employee.valid?

            @employee.save

            redirect_to @employee and return
            
        else

            flash[:errors] = @employee.errors.full_messages
            # byebug
            redirect_to new_employee_path and return

        end

    end

    def edit

        @employee = Employee.find(params[:id])
        @dogs = Dog.all


        
    end

    def update

        @employee = Employee.find(params[:id])
        @employee.update(employee_params)
        redirect_to @employee

    end

    private

    def employee_params

        params.require(:employee).permit!

    end

end