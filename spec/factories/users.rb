# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id          :bigint           not null, primary key
#  email       :string           default(""), not null
#  preferences :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    preferences { "%w[normal] " }
  end
end
