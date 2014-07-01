class AddPhotoUrlForProductAddition < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.string :photo_url 
    end
  end
end
