class Spree::Core::Importer::Product
  def update_with_patch
    product.translations.delete_all
    update_without_patch
  end

  alias_method_chain :update, :patch
end
