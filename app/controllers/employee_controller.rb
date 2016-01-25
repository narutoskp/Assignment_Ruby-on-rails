class EmployeeController < ApplicationController

	def create
    @article = Article.find(params[:article_id])
    @employee = @article.employees.create(employee_params)
    redirect_to article_path(@article)
  end

  private
    def employee_params
      params.require(:employee).permit(:employee)
    end
    
end
