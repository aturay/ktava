ActiveAdmin.register Tag do
  menu parent: 'Settings'

  permit_params :name, :tag_type, :description
end
