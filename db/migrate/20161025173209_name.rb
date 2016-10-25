class Name < ActiveRecord::Migration[5.0]
  def change
    rename_column :relationships, :followe, :followee_id
  end
end
