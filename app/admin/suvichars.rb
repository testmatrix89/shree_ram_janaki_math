ActiveAdmin.register Suvichar do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :title, :description, :colour_options, :discount, :price, :category, avatars: [] #:list, :of, :attributes, :on, :model
  permit_params :suvichar_title, :suvichar_text, suvichar_image: []


  index do
    selectable_column
    column 'Suvichar Title', :suvichar_title
    column 'Suvichar Text', 'See Full description edit this page or visit website'
    # column :sthan_image do |avatar|
    #   span do
    #     avatar.avatars.each do |img|
    #       span do
    #         image_tag(img.url.to_s, style: 'height:auto;width:80px;')
    #       end
    #     end
    #   end
    # end
    column 'Created Date', :created_at
    column 'Updated Date', :updated_at
    actions
  end

  form html: { multipart: true }  do |f|
    f.inputs  do
      f.input :suvichar_title
      f.input :suvichar_text, as: :quill_editor
      f.input :suvichar_image, as: :file, input_html: { multiple: true }
    end
    f.actions
  end


end
