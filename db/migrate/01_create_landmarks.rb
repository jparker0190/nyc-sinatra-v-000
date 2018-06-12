class CreateLandmarks < ActiveRecord::Migration
  raise 'Write CreateLandmarks migration here'
  def change
    create_table :landmark do |t|
      t.string :name
      t.integer :figure_id
      t.integer :year_completed
    end
  end
end
