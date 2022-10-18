class PlanetSerializer < ActiveModel::Serializer
  attributes :id, :name, :distance_from_earth, :nearest_star, :image, :created_at, :updated_at
end
