class CreateIssues < ActiveRecord::Migration
  def change
  	create_table :issues do |t|
      t.string :title
      t.string :issue
      t.date :date
    end
  end
end
