class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def create
    new_c = Coupon.create(coupon_code: params[:coupon][:coupon_code],store: params[:coupon][:store])
    redirect_to coupon_path(new_c)
  end

  def show
    @student = Coupon.find(params[:id])
  end
end
