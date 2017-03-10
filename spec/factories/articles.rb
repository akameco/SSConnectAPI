# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  url        :string
#  posted_at  :datetime
#  blog_id    :integer
#  story_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :article do
    url { FFaker::Internet.http_url + '/' + FFaker::Internet.user_name }
    posted_at { Faker::Time.between(2.weeks.ago, Date.today) }
  end

end
