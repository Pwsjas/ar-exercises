class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true }
  #validates :annual_revenue, greater_than: 0
  validate :annual_revenue_is_greater_than_0

  private

  def annual_revenue_is_greater_than_0
    if annual_revenue >= 0
      errors.add(:annual_revenue, 'must be a positive integer')
    end
  end
end
