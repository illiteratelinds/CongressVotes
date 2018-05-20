class Legislator < ApplicationRecord
  belongs_to :state
  # validates :first_name, :middle_name, :last_name, :party, :title, :chamber, :term_start, :term_end, :missed_votes_pct, presence: true
end
