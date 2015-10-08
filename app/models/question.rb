class Question < ActiveRecord::Base
  self.inheritance_column = nil
  TYPES = ["Dichotomous", "Nominal", "Ordinal", "Interval", "Semantic differential"]

  belongs_to :survey

  has_many :candidates
  accepts_nested_attributes_for :candidates, :reject_if => :all_blank, :allow_destroy => true
end
