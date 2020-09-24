json.array! @documents do |document|
  json.extract! document, :id, :number
end
