class CreateStarterstoreJamAuthors < ActiveRecord::Migration
  def change
    create_content_table :authors do |t|
      t.string :name
      t.text :bio, :size => (64.kilobytes + 1)

      t.timestamps
    end
  end
end