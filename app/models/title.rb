class Title < ActiveRecord::Base
  has_many :figures

  has_many :figures, through: :figure_titles
end
