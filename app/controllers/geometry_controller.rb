class GeometryController < ApplicationController
  def index
  end

  def calculate
    begin
      @area = Circle.new(radius: circle_params[:radius]).area
      respond_to do |format|
        format.js { render :calculate }
      end
    rescue
      redirect_to root_path, flash: { danger: 'Incorrect data!' }
    end
  end

  private

  def circle_params
    params.permit(:radius)
  end
end
