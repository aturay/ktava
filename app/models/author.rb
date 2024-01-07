class Author < ApplicationRecord
  has_and_belongs_to_many :books

  def self.ransackable_associations(auth_object = nil)
    ["books"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["birth_day", "created_at", "death_day", "full_name", "id", "id_value", "updated_at"]
  end
end
