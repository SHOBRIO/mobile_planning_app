# -*- encoding : utf-8 -*-
class HomeController < ApplicationController
  def index
    @plans = Plan.all
  end

  def create
    select_plan = Plan.where(id: params[:plans])
    select_plan.each { |plan|
      result = 0
      result += plan.price
    }
    binding.pry
    redirect_to root_path, sucsess: "計算しました"
  end
end
