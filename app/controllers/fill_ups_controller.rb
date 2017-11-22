# frozen_string_literal: true

class FillUpsController < ProtectedController
  before_action :set_fill_up, only: %i[show update destroy]

  # GET /fill_ups
  def index
    @fill_ups = current_user.fill_ups

    render json: @fill_ups
  end

  # GET /fill_ups/1
  def show
    render json: @fill_up
  end

  # POST /fill_ups
  def create
    @fill_up = current_user.fill_ups.build(fill_up_params)

    if @fill_up.save
      render json: @fill_up, status: :created, location: @fill_up
    else
      render json: @fill_up.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fill_ups/1
  def update
    if @fill_up.update(fill_up_params)
      render json: @fill_up
    else
      render json: @fill_up.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fill_ups/1
  def destroy
    @fill_up.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_fill_up
    @fill_up = current_user.fill_ups.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def fill_up_params
    params.require(:fill_up).permit(:date, :mileage, :gallons, :mpg, :price)
  end
end
