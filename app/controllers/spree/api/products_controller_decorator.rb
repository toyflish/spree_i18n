Spree::Api::ProductsController.class_eval do
  def permitted_product_attributes
    super + [{
      translations_attributes: [:name, :description, :locale]
    }]
  end
end
