ActiveAdmin.register Book do
  permit_params :uuid, :isbn, :title, :description, :pages_count, :publisher, :publisher_address,
                :publication_date, :release, :bbk, :publication_license_url, :review_url, :avatar_url,
                :views_count, :source_id, tag_ids: [], language_ids: [], authors_ids: []

  index do
    column :uuid
    column :isbn
    column :title
    column :description
    column :pages_count
    column :publisher
    column :publisher_address
    column :publication_date
    column :release
    column :bbk
    column :publication_license_url
    column :review_url
    column :avatar_url
    column :views_count
    column :source
    actions
  end

  form do |f|
    f.inputs do
      f.input :uuid, hint: 'For example: ' + SecureRandom.uuid
      f.input :authors
      f.input :source
      f.input :tags
      f.input :languages
      f.input :isbn
      f.input :title
      f.input :description
      f.input :pages_count
      f.input :publisher
      f.input :publisher_address
      f.input :publication_date, as: :datepicker
      f.input :release
      f.input :bbk
      f.input :publication_license_url
      f.input :review_url
      f.input :avatar_url
      f.input :views_count
    end
    f.actions
  end

  show do
    attributes_table do
      row :uuid
      row :authors
      row :languages
      row :source
      row :tags
      row :isbn
      row :title
      row :description
      row :pages_count
      row :publisher
      row :publisher_address
      row :publication_date
      row :release
      row :bbk
      row :publication_license_url
      row :review_url
      row :avatar_url
      row :views_count
    end
  end
end
