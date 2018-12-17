require 'rails_helper'

RSpec.describe ListItem, :type => :model do
  describe "ordering" do
    it "changes the value of sort_order" do
      list_item_one = ListItem.create
      list_item_two = ListItem.create
      list_item_three = ListItem.create
      
      expect {
        list_item_one.prepend_sibling(list_item_three)
      }.to_not raise_exception
    end
  end
end