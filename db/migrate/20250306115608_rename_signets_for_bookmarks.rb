class RenameSignetsForBookmarks < ActiveRecord::Migration[7.1]
  def change
    rename_table :signets, :bookmarks
  end
end
