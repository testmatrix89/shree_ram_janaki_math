ActiveAdmin.register Mattress do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :image, :title, :description, :price, :discount, :colour_options #:list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
  selectable_column
  column 'Titile', :title
  column 'Description', :description
  column 'Price', :price
  column 'Discount', :discount
  column 'Options', :colour_options, type: "text"
  column :image do |cot|
  	image_tag cot.image_url.to_s, style: 'height:auto;width:80px;'
  end
  column 'Created Date', :created_at
  column 'Updated Date', :updated_at
  actions
end

end
