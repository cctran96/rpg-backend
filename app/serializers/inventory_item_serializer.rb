class InventoryItemSerializer < ActiveModel::Serializer
    attributes :id, :amount, :item

    def item
        Item.select("id, name, description, effect").find(object.item_id)
    end
end