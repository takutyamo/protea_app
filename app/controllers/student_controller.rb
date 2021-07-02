class StudentController < ApplicationController
    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
    end

    def edit

    end

    def create
        @student = Student.new(name: params[:student][:name], mail: params[:student][:mail], password: params[:student][:password])
        if @student.save
            redirect_to '/'
        else
            redirect_to '/student'
        end
    end

    def update

    end

    def destroy
        student = Student.find(params[:id])
        if student.destroy
            session[:student_id] = nil
            redirect_to '/'
        else
            redirect_to '/'
        end
    end
end
