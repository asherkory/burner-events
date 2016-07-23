class BurnsController < ApplicationController
  before_action :set_burn, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:new, :edit]

  def index
    @burns = Burn.all
  end

  def show
  end

  def new
    @burn = Burn.new
  end

  def create
    @burn = Burn.new(burn_params)
    if @burn.save
      redirect_to burns_path, notice: "Successfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @burn.update(burn_params)
    if @burn.save
      redirect_to burn_path(@burn), notice: "Successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @burn.destroy
    redirect_to burns_path
  end

  private

    def set_burn
      @burn = Burn.find(params[:id])
    end

    def burn_params
      params.require(:burn).permit(:name)
    end
end
