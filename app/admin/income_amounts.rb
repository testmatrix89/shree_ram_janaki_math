ActiveAdmin.register IncomeAmount do
  config.filters = false
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :title, :description, :colour_options, :discount, :price, :category, avatars: [] #:list, :of, :attributes, :on, :model
  permit_params :total_amount_received, :date_to_taken_amount, :name_of_amount_receiver, :name_of_amount_taken_from, :description


  index do
    selectable_column
    column 'Total Amount Received', :total_amount_received
    column 'Date to Taken Amount', :date_to_taken_amount
    column 'Name of Amount Receiver', :name_of_amount_receiver
    column 'Name of Amount Taken From', :name_of_amount_taken_from
    column 'Details of exchanges', :description    
    column 'Created Date', :created_at
    column 'Updated Date', :updated_at
    actions
  end

  show do
    attributes_table do
      row :total_amount_received
      row :date_to_taken_amount
      row :name_of_amount_receiver
      row :name_of_amount_taken_from
      row :description
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs do
      f.input :total_amount_received
      f.input :date_to_taken_amount
      f.input :name_of_amount_receiver
      f.input :name_of_amount_taken_from
      f.input :description, as: :quill_editor
    end
    f.actions
  end

end
