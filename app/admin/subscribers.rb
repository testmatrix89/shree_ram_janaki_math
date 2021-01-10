ActiveAdmin.register Subscriber do

	controller do
  	actions :all, :except => [:edit, :new]
  end
	# See permitted parameters documentation:
	# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
	#
	# permit_params :list, :of, :attributes, :on, :model
	permit_params :email
	# or
	#
	# permit_params do
	#   permitted = [:permitted, :attributes]
	#   permitted << :other if params[:action] == 'create' && current_user.admin?
	#   permitted
	# end

	index do
	  selectable_column
	  column 'Email', :email
	  column 'Created Date', :created_at
	  column 'Updated Date', :updated_at
	  actions
	end
end
