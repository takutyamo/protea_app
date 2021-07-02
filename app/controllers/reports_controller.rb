class ReportsController < ApplicationController
    def index
        @reports = Report.all
    end

    def show
        @report = Report.find(params[:id])
    end

    def new
        @report = Report.new
    end

    def create
        student = session[:student_id]
        @report = Report.new(title: params[:report][:title], content: params[:report][:content])
        @report.student_id = student
        if @report.save
            redirect_to '/reports'
        end
    end

    def edit
        @report = Report.find(params[:id])
    end

    def update
        report = Report.find(params[:report][:id])
        if report.update(title: params[:report][:title], content: params[:report][:content])
            redirect_to '/reports'
        else
            redirect_to '/'
        end
    end

    def destroy
        report = Report.find(params[:id])
        if report.destroy
            redirect_to '/reports'
        else
            redirect_to '/reports'
        end
    end
end
