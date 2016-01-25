class CustomersController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    @customer = @article.customers.create(customer_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @customer = @article.customers.find(params[:id])
    @customer.destroy
    redirect_to article_path(@article)
  end
 
  private
    def customer_params
      params.require(:customer).permit(:namecustomer)
    end
end

