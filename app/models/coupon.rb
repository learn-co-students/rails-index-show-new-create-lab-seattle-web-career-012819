class Coupon < ActiveRecord::Base
  def to_s
    self.coupon_code + " from " + self.store
  end
end
