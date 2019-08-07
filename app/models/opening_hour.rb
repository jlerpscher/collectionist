class OpeningHour < ApplicationRecord
  belongs_to :shop
  
  validates_presence_of :day, :close, :open, :shop_id
  validates_inclusion_of :day, :in => 1..7
  validate :open_before_close 

  validates_uniqueness_of :open, scope: [:shop_id, :day]
  validates_uniqueness_of :close, scope: [:shop_id, :day]

  def day_name
    I18n.t("date.day_name_#{read_attribute(:day)}")
  end

  protected
  
  def open_before_close
    if !closed
      errors.add(:close, I18n.t('errors.open_before_close')) if open && close && open >= close
    end
  end
end
