class AddTabbleArticles < ActiveRecord::Migration[6.1]
  def change
    create_table "articles", force: true do |t|
      t.string   "title"
      t.string   "sub_title"
      t.text     "content"
      t.boolean  "published",        default: false
      t.references  "user", foreign_key: true
      t.timestamps
    end
  end
end
