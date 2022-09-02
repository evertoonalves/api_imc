# frozen_string_literal: true

class ImcController < ApplicationController
  protect_from_forgery with: :null_session
  def imc
    result = Imc.new(imc_params).call

    render json: result
  end

  private

  def imc_params
    params.require(:imc).permit(:height, :weight)
  end
end
