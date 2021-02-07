ActiveAdmin.register Program do
  config.filters = false
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :title, :description, :colour_options, :discount, :price, :category, avatars: [] #:list, :of, :attributes, :on, :model
  permit_params :program_name, :program_date, :program_place, :program_activity, :program_description


  form  do |f|
    f.inputs  do
      f.input :program_name
      f.input :program_date
      f.input :program_place
      f.input :program_activity
      f.input :program_description, as: :quill_editor
    end
    f.actions
  end


end
