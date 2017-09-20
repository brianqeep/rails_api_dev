class Card < ApplicationRecord
  belongs_to :list
  belongs_to :assignee
  belongs_to :creator
end
