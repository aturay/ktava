ActiveAdmin.register Source do
  menu parent: 'Settings'

  permit_params :name, :description

end
