class CreateClips < ActiveRecord::Migration[5.2]
  def change
    create_table :clips do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.timestamps
    end
    add_index :clips, :user_id
  end
end
