# SimCard model
class SimCard < ApplicationRecord
  FROM = 1_111_111_111
  TO = 9_999_999_999

  validates_presence_of :number
  validates_uniqueness_of :number
  validates_inclusion_of :number, in: FROM..TO

  after_initialize do |card|
    assign_random if card.number.nil? || card.unavailable?
  end

  def unavailable?
    self.class.exists?(number: number)
  end

  def available?
    !unavailable?
  end

  private

  def assign_random
    loop do
      self.number = rand(FROM...TO)
      break if available?
    end
  end
end
