class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.column :title,      :string, :null => :no
      t.column :content,    :text
      t.column :version,    :integer, :default => 1
      t.column :parent_id,  :integer, :default => 0
      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
