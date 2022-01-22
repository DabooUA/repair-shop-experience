class RepairshopSerializer
  include FastJsonapi::ObjectSerializer
  attributes :repair_shop_name, :street_address, :city, :state, :zip_code

  attribute :comments do |shop| 
    shop.comments.map do |c|
      {
        content: c.content
      }
    end
  end
  # has_many :comments, serializer: CommentSerializer
end
