# -*- encoding : utf-8 -*-
class HomeController < ApplicationController
  def index
    @plans = Plan.all
    @options = Option.all
    @result = params[:result]
  
    #createで受け取ったパラメーターをもとに表示する
  end

  def create
    @select_plan = Plan.where(id: params[:plans])
    @select_options = Option.where(id: params[:options])

    @plan_price = @select_plan[0].price

    @options_price_sum = 0
    @select_options.map { |option| @options_price_sum += option.price }
    @result = @plan_price + @options_price_sum

    redirect_to "/#{@result}"

  end
end
