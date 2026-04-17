class CasesController < ApplicationController
    skip_before_action :verify_authenticity_token
  def index
    @cases = Case.all
    render json: @cases
  end

  def create
    case_item = Case.create(case_params)
    render json: case_item
  end

  private

  def case_params
    params.require(:case).permit(:title, :description, :status)
  end
end