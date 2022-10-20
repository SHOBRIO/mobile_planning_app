# -*- encoding : utf-8 -*-
class HomeController < ApplicationController
  def index
    @plans = Plan.all
    @select_plan_price
    #createで受け取ったパラメーターをもとに表示する
  end

  def create
    @select_plan = Plan.where(id: params[:plans])
    @select_plan_price = select_plan_price
    #パラメーターをindexに渡すことで引き継げる
    #redirect_to_root_path
  end
end


private

def select_plan_price
  price = @select_plan.map { |plan|
  plan.price
  }
  binding.pry
  price.sum
end
