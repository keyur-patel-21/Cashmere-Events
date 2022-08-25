class RemoveDateTimeFormEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :time, :time
  end
end
