require 'pry'
class CouponsController < ApplicationController
  def index
    @coupon = Coupon.all
  end

  def new

  end

  def show
    @coupon = Coupon.find(params[:id])

  end

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    #binding.pry
    redirect_to coupon_path(@coupon)
  end
end
