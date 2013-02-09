class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
			t.string :title
			t.integer :event_id

      t.timestamps
    end
  end
end
