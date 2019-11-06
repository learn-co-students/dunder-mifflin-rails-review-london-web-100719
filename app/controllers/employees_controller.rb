class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update]
  
  def index
    @employees = Employee.all
  end

  def show
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.valid?
      @employee.save
      redirect_to @employee and return
    else
      redirect_to new_employee_path and return
    end
  end

  def edit
  end

  def update
    @employee.update(employee_params)
    redirect_to @employee
  end

  def destroy
  end

  private

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(
      :first_name, 
      :last_name, 
      :alias,
      :title,
      :office,
      :dog_id,
      :img_url)
  end
end
