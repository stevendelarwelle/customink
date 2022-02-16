class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :user_url
      t.string :user_url_code

      t.timestamps
    end
  end
end
