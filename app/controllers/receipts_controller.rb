class ReceiptsController < ApplicationController
  before_action :set_receipt, only: %i[ edit update destroy ]

  def index
    @receipts = Receipt.all
  end

  def new
    @receipts = Receipt.new
  end

  def edit
  end

  def create
    @receipt = Receipt.new(receipt_params)
    if @receipt.save
      flash[:success] = "Receipt successfully created"
      redirect_to @receipt
    else
      flash[:error] = "Something went wrong"
      render :new, status: :unprocessable_entity 
    end
  end

  def update
    if @receipt.update(receipt_params)
      flash[:success] = "Receipt was successfully updated"
      redirect_to @receipt
    else
      flash[:error] = "Something went wrong"
      render :edit, status: :unprocessable_entity 
    end
  end
  
  def destroy
    @receipt.destroy

    redirect_to receipts_path, notice: "Receipt was successfully deleted.", status: :see_other
  end

  private

  def set_receipt
    @receipt = Receipt.find(params[:id])
  end
  

  def receipt_params
    params.require(:receipt).permit(:user, :business_name, :url, :upload_date)
  end

end
