class CreateFeed < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :title
      t.string :url
      t.datetime :published_at
      t.string :guid

      t.timestamps null: false
    end
  end
end
