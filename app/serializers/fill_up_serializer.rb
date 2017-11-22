class FillUpSerializer < ActiveModel::Serializer
  attributes :id, :date, :mileage, :gallons, :mpg, :price
end
