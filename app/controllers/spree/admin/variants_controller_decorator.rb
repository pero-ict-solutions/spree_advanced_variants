Spree::Admin::VariantsController.class_eval do

  def generate_for_option_types
    product = Spree::Product.find_by_slug(params[:product_id])
    option_values_hash = {}
    product.option_types.each do |ot|
      option_values_hash[ot.id.to_s] = ot.option_value_ids
    end
    product.option_values_hash = option_values_hash
    product.send(:build_variants_from_option_values_hash)
    product.save!
    redirect_to collection_url, :notice => "generated all the variants"
  end

end
