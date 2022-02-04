class ChangeColumnConstraintsToUrls < ActiveRecord::Migration[6.1]
  def up
    change_column :urls, :origin, :string, null: false
    change_column :urls, :abbreviated, :string, null: false
  end

  def down
    change_column :urls, :origin, :string, null: true
    change_column :urls, :abbreviated, :string, null: true
  end
end
