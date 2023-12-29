class Tag < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    %w(created_at description id id_value name tag_type updated_at)
  end
end
