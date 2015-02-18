class SetDefaultBirthdayOnCats < ActiveRecord::Migration
  def change
  	change_column :cats, :birthday, :datetime, :null=>false, :default=>'now()'
  end
end
