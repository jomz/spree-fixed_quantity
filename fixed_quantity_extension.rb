# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class FixedQuantityExtension < Spree::Extension
  version "1.0"
  description "Use this extension if you sell products per multiples of x. Wine for example would typically be sold per 6, 12, 18, ..."
  url "http://hardcoreforkingaction.com/"

  # def self.require_gems(config)
  #   config.gem "gemname-goes-here", :version => '1.2.3'
  # end
  
  def activate
    
    LineItem.class_eval do
	 		validate :must_meet_fixed_quantity
			
			private
			def must_meet_fixed_quantity
				base = variant.is_master? ? variant.product.base_quantity : variant.base_quantity
				base ||= 1
				errors.add(:quantity, I18n.t('fixed_quantity.is_not_a_multiple_of_base', :base => base)) if quantity % base != 0
			end
		end
		
    # make your helper avaliable in all views
    # Spree::BaseController.class_eval do
    #   helper YourHelper
    # end
  end
end
