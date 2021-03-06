class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def new
        @employee = Employee.new
    end
    
    def create
        @employee = Employee.create(employee_params(:first_name,:last_name,:alias,:title,:office,:dog_id))
        if params[:employee].permitted? == false
            render :error_page
        else
        redirect_to employee_path(@employee)
        end
    end

    def edit 
        @employee = Employee.find(params[:id])
    end

    def update
        employee = Employee.find(params[:id])
        employee.update(employee_params(:first_name,:last_name,:alias,:title,:office,:dog_id))

        redirect_to employee_path(employee)
    end

    private

    def employee_params(*args)
        params.require(:employee).permit(args)
    end
end

