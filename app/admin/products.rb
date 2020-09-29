ActiveAdmin.register Product do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :description, :colour_options, :discount, :price, :category, avatars: [] #:list, :of, :attributes, :on, :model
  #json_editor
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



  form html: { multipart: true }  do |f|
    f.inputs  do
      f.input :title
      f.input :description
      f.input :colour_options #, as: :select, collection: options_for_select(['Red', 'Blue', 'Green', 'Yellow'], f.product.colour_options.to_s), multiple: true, size: 4
      f.input :price
      f.input :discount, as: :select, collection: options_for_select((1..100).select(), f.product.discount.to_i), include_blank: '--Select Discount--'
      f.input :category, as: :select, collection: options_for_select(['Mattress', 'Sofa', 'Cot', 'Dining Table'], f.product.category), include_blank: '--Select Category--'
      f.input :avatars, as: :file, input_html: { multiple: true }
    end
    f.actions
  end

end
