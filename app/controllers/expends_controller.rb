class ExpendsController < ApplicationController
  def new
  end

  def index
     @expend = Expend.all
  end

  def create
    @expend = Expend.new(expend_params)

    @expend.save
    redirect_to @expend
  end

  def show
    @expend = Expend.find(params[:id])
  end

  private
    def expend_params
      params.require(:expend).permit(:title, :price)
    end
end
