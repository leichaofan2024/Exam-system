module ProductsHelper
  def render_active(index)
    if index == 0
      "active"
    end
  end

  def product_is_paid?(product_lists,product)
    a = Array.new
    product_lists.each do |product_list|
      if product_list.product_name == product.title
        a << "true"
      else
        a<< "false"
      end
    end
    a.include?("true")
  end

end
