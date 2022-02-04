# == Schema Information
#
# Table name: urls
#
#  id          :bigint           not null, primary key
#  abbreviated :string(255)      not null
#  origin      :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Url < ApplicationRecord
  before_create :determine_abbreviated_url

  def determine_abbreviated_url
    self.abbreviated = SecureRandom.alphanumeric(10)
  end
end
