require 'test_helper'

describe SlatesController do

  Given(:user) { FacoryGirl.create(:user) }
  Given(:slate) { FactoryGirl.create(:slate) }

  describe "#index" do

    Given { get slates_url }
    Then { value(response).must_be :success? }
  end

  describe "#show" do

    Given { get slate_url(slate) }
    Then { value(response).must_be :success? }
  end

  describe "#create" do

    describe "just a slate" do

      Given(:params_hash) { { slate: { name: "vive la france!" } } }
      Then { expect {
              post slates_url, params: params_hash
            }.must_change "Slate.count"
            value(response.status).must_equal 201 }
    end

    describe "a slate with nested issues" do

      Given(:params_hash) { { slate: { name: "vive la france!",
        issues_attributes: [{ name: "weed"  }]  } } }
      Then { expect {
              post slates_url, params: params_hash
            }.must_change "Issue.count"
            value(response.status).must_equal 201 }
    end
  end

  Given(:slate) { FactoryGirl.create(:slate) }
  Given(:issue) { slate.issues.create(name: "miszpled izsue nayme") }

  describe "#update" do


    describe "just an attribute on a slate" do

      Given { patch slate_url(slate), params: {
        slate: { name: "cool updated slate name" } } }

      Then { slate.reload.name.must_equal "cool updated slate name" }
    end

    describe "an attribute on an issue nested in a slate" do

      Given { patch slate_url(slate), params: {
        slate: { issues_attributes:
          [{ id: issue.id, name: "correctly spelled name"  }] } } }

      Then { issue.reload.name.must_equal "correctly spelled name" }
    end

    describe "a slate by adding a new issue" do

      Then { expect {
              patch slate_url(slate), params: { slate: {
                issues_attributes: [ { name: "heroin"  } ] } }
            }.must_change "Issue.count"
            value(response.status).must_equal 200  }
    end
  end

  describe "#destroy" do

    describe "a slate" do

      Given { slate }
      Then { expect {
        delete slate_url(slate)}.must_change "Slate.count", -1
        value(response.status).must_equal 204 }
    end

    describe "a slate and child issues" do

      Given { issue }
      Then { expect {
        delete slate_url(slate) }.must_change "Issue.count", -1
        value(response.status).must_equal 204}
    end
  end
end
