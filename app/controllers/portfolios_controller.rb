class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :show, :update, :destroy]
layout "portfolio"

def index
	@portfolio_item = Portfolio.all
  
end

def angular
  @angular_portfolio_item = Portfolio.angular
end

def new 
@portfolio_item = Portfolio.new
3.times { @portfolio_item.technologies.build }
end

def create 

	 @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
       # format.json { render :show, status: :created, location: @portfolio_items }
      else
        format.html { render :new }
       # format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end

end

def edit
	
end

def update
	
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
end

def show
	
end

def destroy

	@portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Record was successfully destroyed.' }
      format.json { head :no_content }
    end
end

private

def portfolio_params
  params.require(:portfolio).permit(:title,
                                    :subtitle,
                                    :body, 
                                     technologies_attributes: [:name]
                                    )
end

def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
end

end
