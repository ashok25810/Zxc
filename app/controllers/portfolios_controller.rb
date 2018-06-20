class PortfoliosController < ApplicationController

def index
	@portfolio_item = Portfolio.all
end

def new 
@portfolio_item = Portfolio.new
end

def create 

	 @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
       # format.json { render :show, status: :created, location: @portfolio_items }
      else
        format.html { render :new }
       # format.json { render json: @portfolio_items.errors, status: :unprocessable_entity }
      end
    end

end

 

end
