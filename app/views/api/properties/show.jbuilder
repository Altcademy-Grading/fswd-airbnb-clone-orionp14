json.property do
  json.id @property.id
  json.title @property.title
  json.description @property.description
  json.city @property.city
  json.country @property.country
  json.property_type @property.property_type
  json.price_per_night @property.price_per_night
  json.max_guests @property.max_guests
  json.bedrooms @property.bedrooms
  json.beds @property.beds
  json.baths @property.baths
  json.image_url @property.image_url
  json.images do
    json.array! @property.images do |image|
      json.image_url url_for(image)
    end
  end

  if @property.user
    json.user do
      json.id @property.user.id
      json.username @property.user.username
    end
  else
    # Handle the case where the user is not present (optional)
    json.user nil
    json.image nil
  end
end
