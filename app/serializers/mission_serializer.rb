class MissionSerializer < ActiveModel::Serializer
  attributes :id, :name, :scientist_id, :planet_id, :created_at, :updated_at
end
