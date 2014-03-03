class AddSpeakersToEvents < ActiveRecord::Migration
  def change
    add_column :events, :speaker, :string, :null => false, :default => ""
  end

  def self.down
    remove_column :events, :speaker
  end
end
