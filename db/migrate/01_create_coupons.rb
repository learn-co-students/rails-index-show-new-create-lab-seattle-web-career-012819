class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |column|
      column.string :coupon_code
      column.string :store
    end
  end

end
