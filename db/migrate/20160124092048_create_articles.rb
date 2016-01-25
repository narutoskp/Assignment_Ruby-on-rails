class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :floor
      t.string :room

      t.timestamps null: false
    end
  end
end
