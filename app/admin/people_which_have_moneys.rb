ActiveAdmin.register PeopleWhichHaveMoney do
  config.filters = false
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :title, :description, :colour_options, :discount, :price, :category, avatars: [] #:list, :of, :attributes, :on, :model
  permit_params :persone_name, :taken_date, :taken_amount, :description


  index do
    selectable_column
    column 'Total Amount Received', :persone_name
    column 'Date to Taken Amount', :taken_date
    column 'Name of Amount Receiver', :taken_amount
    column 'Details of exchanges', :description    
    column 'Created Date', :created_at
    column 'Updated Date', :updated_at
    actions
  end

  show do
    attributes_table do
      row :persone_name
      row :taken_date
      row :taken_amount
      row :description
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs  do
      f.input :persone_name
      f.input :taken_date
      f.input :taken_amount
      f.input :description, as: :quill_editor
    end
    f.actions
  end


end
