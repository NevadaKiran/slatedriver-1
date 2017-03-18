require "test_helper"

describe Slate do
  subject {Slate}

  describe "db" do
    specify "columns & types" do

      must_have_column(:name)
      must_have_column(:election_cycle)
      must_have_column(:user_id, :integer)
    end
  end

  specify "associations" do

    must_belong_to :user
    must_have_many :issues

  end
end
