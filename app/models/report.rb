class Report < ApplicationRecord
  belongs_to :user, optional: true
end
