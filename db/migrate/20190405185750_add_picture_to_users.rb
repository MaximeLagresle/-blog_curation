class AddPictureToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :picture, :string, default: 'app/assets/images/profile.svg'
  end
end
