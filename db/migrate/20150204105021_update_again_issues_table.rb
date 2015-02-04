class UpdateAgainIssuesTable < ActiveRecord::Migration
  def change
  	change_table :issues do |t|
  		t.remove :date
  	end
  end
end
