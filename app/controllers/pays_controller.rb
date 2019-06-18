class PaysController < ApplicationController
  def create
    @expend = Expend.find(params[:expend_id])
    @pay = @expend.pays.create(pay_params)
    redirect_to expend_path(@expend)
  end

  def destroy
    @expend = Expend.find(params[:expend_id])
    @pay = @expend.pays.find(params[:id])
    @pay.destroy
    redirect_to expend_path(@expend)
  end
  
  private
    def pay_params
      params.require(:pay).permit(:payable, :cost)
    end
end
