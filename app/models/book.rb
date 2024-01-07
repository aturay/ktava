class Book < ApplicationRecord
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :languages
  belongs_to :source

  def self.ransackable_associations(auth_object = nil)
    ["authors", "languages", "source", "tags"]
  end

  def self.ransackable_attributes(auth_object = nil)
    %w(avatar_url bbk created_at description id id_value isbn pages_count publication_date publication_license_url publisher publisher_address release review_url source_id title updated_at uuid views_count)
  end
end
