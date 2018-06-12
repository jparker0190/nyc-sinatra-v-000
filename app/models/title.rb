class Title < ActiveRecord::Base
  has_many :figure
  has_many :titles, through: :figure_titles
end
