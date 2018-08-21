class CreateAppearances < ActiveRecord::Migration[5.1]
  def change
    create_table :appearances do |t|
      t.integer :guest_id
      t.integer :episode_id
      t.integer :rating

      t.timestamps
      t.index ["guest_id", "episode_id"], name: "index_appearance_on_guest_id_episode_id"
    end
  end
end
