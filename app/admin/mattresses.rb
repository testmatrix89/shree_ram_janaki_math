ActiveAdmin.register Mattress do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :matresstitle, :mattressdesc, :image #:list, :of, :attributes, :on, :model
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
  column 'Title', :matresstitle
  column 'Description', :mattressdesc
  column :image do |mattress|
  	image_tag mattress.image_url.to_s, style: 'height:auto;width:80px;'
  end
  column 'Created Date', :created_at
  column 'Updated Date', :updated_at
  actions
end

end
