# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  title      :string
#  url        :string
#  rss        :string
#  selector   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :blog do
    title { FFaker::NameJA.last_name + FFaker::NameJA.last_name + '速報' }
    url { FFaker::Internet.http_url }
    rss { "#{FFaker::Internet.http_url}/rss" }
  end

end
