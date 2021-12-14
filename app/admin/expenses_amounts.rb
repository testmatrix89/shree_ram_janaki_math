ActiveAdmin.register ExpensesAmount do
  config.filters = false
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :title, :description, :colour_options, :discount, :price, :category, avatars: [] #:list, :of, :attributes, :on, :model
  permit_params :expense_title, :Expense_date, :expense_amount, :name_of_expense_done, :expense_description


  index do
    selectable_column
    column 'Total Amount Received', :expense_title
    column 'Date to Taken Amount', :Expense_date
    column 'Name of Amount Receiver', :expense_amount
    column 'Name of Amount Taken From', :name_of_expense_done
    column 'Details of exchanges', :expense_description    
    column 'Created Date', :created_at
    column 'Updated Date', :updated_at
    actions
  end

  show do
    attributes_table do
      row :expense_title
      row :Expense_date
      row :expense_amount
      row :name_of_expense_done
      row :expense_description
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs  do
      f.input :expense_title
      f.input :Expense_date
      f.input :expense_amount
      f.input :name_of_expense_done
      f.input :expense_description, as: :quill_editor
    end
    f.actions
  end


end
