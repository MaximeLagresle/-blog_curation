class RemoveTypeOfFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :type_of, :string
  end
end
