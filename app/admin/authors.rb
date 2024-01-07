ActiveAdmin.register Author do
  menu parent: 'Settings'

  permit_params :full_name, :birth_day, :death_day

  index do
    selectable_column
    column :full_name
    column :birth_day
    column :death_day
    actions
  end

  form do |f|
    f.inputs do
      f.input :full_name
      f.input :birth_day, as: :datepicker
      f.input :death_day, as: :datepicker
    end
    f.actions
  end

  show do
    attributes_table do
      row :full_name
      row :birth_day
      row :death_day
      row :created_at
      row :updated_at
    end
  end
end
