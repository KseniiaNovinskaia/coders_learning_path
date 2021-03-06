class AddPathToChatrooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :path, null: false, foreign_key: true
  end
end
