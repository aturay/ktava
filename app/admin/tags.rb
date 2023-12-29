ActiveAdmin.register Tag do
  menu parent: 'Settings'
  # permit_params :name, :tag_type, :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :tag_type, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
