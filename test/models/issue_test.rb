require "test_helper"

describe Issue do
  subject {Issue}

  describe "db" do

    specify "columns & types" do
      must_have_column(:slate_id, :integer)
      must_have_column(:name)
      must_have_column(:choices)
      must_have_column(:recommendation)
    end
  end

  specify "associations" do

    must_belong_to(:slate)
  end

end
