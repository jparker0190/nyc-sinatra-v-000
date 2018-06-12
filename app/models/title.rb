class Title < ActiveRecord::Base
  has_many :figures

  has_many :titles, through: :figure_titles
end
