class UpdateIssuesTable < ActiveRecord::Migration
  def change
  	change_table :issues do |t|
  		t.rename :issue, :body
  		t.timestamps :date
  	end
  end
end
