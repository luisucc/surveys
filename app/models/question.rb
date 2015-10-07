class Question < ActiveRecord::Base
  belongs_to :survey
  self.inheritance_column = nil
  TYPES = ["Dichotomous", "Nominal", "Ordinal", "Interval", "Semantic differential"]
end
