json.array! @documents do |document|
  json.extract! document, :number
end
