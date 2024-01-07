ActiveAdmin.register Language do
  menu parent: 'Settings'

  permit_params :name

  config.filters = false
end
