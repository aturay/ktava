class Source < ApplicationRecord
  has_many :books

  def self.ransackable_associations(auth_object = nil)
    ["books"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "id", "id_value", "name", "updated_at"]
  end
end
