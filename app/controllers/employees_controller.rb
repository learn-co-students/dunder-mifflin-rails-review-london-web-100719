class EmployeesController < ApplicationController
    before_action :set_employee, only: [:show, :update, :edit, :destroy]

    def index
        @employees = Employee.all
    end

    def show
        
    end

    def new
        @employee = Employee.new
        @dogs = Dog.all
    end

    def create
        employee = Employee.create(employee_params)

        if employee.save
            redirect_to employee_path(employee)
        else
            flash[:errors] = "Warning:" + employee.errors.full_messages.to_sentence
            render :new
        end
    end

    def edit
        @dogs = Dog.all
    end

    def update
        @dog.update(params[:id])
        redirect_to employee_path(employee)
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :office, :img_url, :title, :dog_id)
    end

    def set_employee
        @employee = Employee.find(params[:id])
    end

end
