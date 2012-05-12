class AddPublishedFlagToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :published, :boolean, :default => false
    Map.all.each do |map|
    	map.update_attribute(:published, true)
    end
  end
end
