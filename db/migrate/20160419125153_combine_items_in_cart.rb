class CombineItemsInCart < ActiveRecord::Migration
  def self.up
    # nahraď více položek pro jediný produkt v košíku jedinou položkou
    Cart.all.each do |cart|
      # spočítej počet každého z produktů v košíku
      sums = cart.line_items.group(:product_id).sum(:quantity)

      sums.each do |product_id, quantity|
        if quantity > 1
          # odeber samostatné položky
          cart.line_items.where(:product_id => product_id).delete_all

          # nahraď je jedinou položkou
          cart.line_items.create(:product_id => product_id, :quantity => quantity)
        end
      end
    end
  end

  def self.down
    # rozděl položky s množstvím > 1 na více samostatných položek
    LineItem.where("quantity > 1").each do |line_item|
      # přidej samostatné položky
      line_item.quantity.times do
        LineItem.create :cart_id => line_item.cart_id,
                        :product_id => line_item.product_id, :quantity => 1
      end

      # odeber původní položku
      line_item.destroy
    end
  end
end
