ActiveAdmin.register Product do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :description, :colour_options, :discount, :price, :category, avatars: [] #:list, :of, :attributes, :on, :model
  json_editor
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
    column 'Colour Options', :colour_options, type: "text"
    column 'Price qwerrtyyu', :price
    column 'Discount', :discount
    column 'Category', :category
    column :avatars do |image|
      span do
        image.avatars.each do |img|
          span do
            image_tag(img.url.to_s, style: 'height:auto;width:80px;')
          end
        end
      end
    end
    column 'Created Date', :created_at
    column 'Updated Date', :updated_at
    actions
  end
end
