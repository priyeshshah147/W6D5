require 'action_view'


class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper

  validates :sex, inclusion: {in: %w(F M)}
  validates :color, inclusion: {in: %w(Gold Silver White Black Yellow)}

  def age 
    # from_time = birth_date.year + birth_date.month + birth_date.day
    age_string = distance_of_time_in_words(birth_date, Time.now)
    age = age_string.split(' ')[1].to_i
  end
end