class SignupPassword < ActiveRecord::Migration
  def self.up
    create_table :signup_passwords do |t|
      t.string :value
    end
  end

  def self.down
    drop_table :signup_passwords
  end
end
