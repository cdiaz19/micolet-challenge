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


class User < ApplicationRecord

  validates :email, presence: true
  validates :email, uniqueness: true

  serialize :preferences, Array

end
