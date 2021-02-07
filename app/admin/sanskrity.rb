ActiveAdmin.register Sanskrity do
  config.filters = false
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #

  permit_params :title, :description, :topic, image: []

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
    column 'Title', :title
    column 'Description' do |sanskrity|
      div do
        short_description(sanskrity.description, 75)
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
      row :title
      row 'Description' do |sanskrity|
        div do
          short_description(sanskrity.description, 150)
        end
      end
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs  do
      f.input :title
      f.input :description, as: :quill_editor
      f.input :image, as: :file
      f.input :topic, :label => 'Member', :as => :select, collection: ["संस्कृति", "शिक्षा", "योग", "धार्मिक", "आध्यात्मिक"]
    end
    f.actions
  end

end
