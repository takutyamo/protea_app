class LoginController < ApplicationController
    def new
    end

    def create
        student = Student.find_by(mail: params[:mail],password: params[:password])
        if student != nil
            session[:student_id] = student.id
            redirect_to '/'
        else
            redirect_to '/login'
        end
    end

    def destroy
        session[:student_id] = nil
        redirect_to '/'
    end
end
