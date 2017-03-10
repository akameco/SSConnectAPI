# == Schema Information
#
# Table name: stories
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :story do
    title { "#{FFaker::NameJA.name}「あいうえお」#{FFaker::NameJA.name}「かきくけこ」" }
  end
end
