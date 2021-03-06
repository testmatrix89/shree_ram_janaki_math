ActiveAdmin.register DevSthan do
  config.filters = false
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :sthan_name, :sthan_description, sthan_image: []
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
    column 'Sthan Name', :sthan_name
    column 'Description' do |devsthan|
      div do
        short_description(devsthan.sthan_description, 75)
      end
    end
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

  show do
    attributes_table do
      row :sthan_name
      row 'Description' do |devsthan|
        div do
          short_description(devsthan.sthan_description, 150)
        end
      end
      row :created_at
      row :updated_at
    end
  end

  form html: { multipart: true }  do |f|
    f.inputs  do
      f.input :sthan_name
      f.input :sthan_description, as: :quill_editor
      f.input :sthan_image, as: :file, input_html: { multiple: true }
    end
    f.actions
  end

end
