class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store_id, presence: true
  #validates :hourly_rate, greater_than: 40
  #validates :hourly_rate, less_than: 200
  validate :hourly_rate_is_between

  private

  def hourly_rate_is_between
    if hourly_rate >= 40 && hourly_rate <= 200
      errors.add(:hourly_rate, 'must be between 40 and 200')
    end
  end
end
