class Report < ApplicationRecord
  belongs_to :user, optional: true

  def search_result(search)
    if search
      Report.where(round_at: 'search')
    else
      render index
    end
  end
end
