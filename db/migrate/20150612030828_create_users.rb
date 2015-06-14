class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
       t.string :name
       t.string :nickname
       t.string :image_url
       t.string :token
       t.string :provider
       t.string :email

      t.timestamps null: false
    end
  end
end
