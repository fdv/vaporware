class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.column :content,        :text
      t.column :status,         :integer, :default => 1
      t.column :starts_at,      :datetime
      t.column :due_at,         :datetime
      t.column :ends_at,        :datetime
      t.column :location_id,    :integer, :default => 1
      t.timestamps
    end
    
    create_table :tasks_users do |t|
      t.column :task_id,        :integer
      t.column :user_id,        :integer
      t.column :primary,        :boolean, :default => :true
    end
  end

  def self.down
    drop_table :tasks
  end
end
