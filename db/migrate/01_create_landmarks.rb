class CreateLandmarks < ActiveRecord::Migration
  raise 'Write CreateLandmarks migration here'
  create_table :landmark do |t|
    t.string :name
  end
  
end
