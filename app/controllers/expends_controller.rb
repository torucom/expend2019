class ExpendsController < ApplicationController
  http_basic_authenticate_with name: "koike", password: "koike"

  def new
    @expend = Expend.new
  end

  def create
    @expend = Expend.new(expend_params)

    if @expend.save
      redirect_to @expend
    else
      render 'new'
    end
  end

  def index
     @expends = Expend.all
  end

  def show
    @expend = Expend.find(params[:id])
  end

  def edit
    @expend = Expend.find(params[:id])
  end

  def update
    @expend = Expend.find(params[:id])

    if @expend.update(expend_params)
      redirect_to @expend
    else
      render 'edit'
    end
  end

  def destroy
    @expend = Expend.find(params[:id])
    @expend.destroy
    redirect_to expends_path
  end
  
  private
    def expend_params
      params.require(:expend).permit(:title, :price)
    end
end
