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


require "rails_helper"

RSpec.describe User, type: :model do

  describe "validations" do

    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email) }

  end

end
