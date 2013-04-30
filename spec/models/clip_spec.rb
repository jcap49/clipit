require 'spec helper'

describe clip do

  let(:user) { FactoryGirl.create(:user) }
  before { @clip = user.clips.build(content: "Lorem ipsum") }

  subject { @clip }

  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  it { should respond_to(:unique_url) }
  it { should respond_to(:slug) }
  it { should respond_to(:photo) }
  it { should respond_to(:body) }
  it { should respond_to(:user_id) }
  it { should respond_to(:song) }
  its(:user) { should == user }

  it { should be_valid }

  describe "accessible attributes" do
    it "should not allow access to user_id" do
      expect do
        Clip.new(user_id: user.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end
  end

  describe "when user_id is not present" do
    before { @clip.user_id = nil }
    it { should_not be_valid }
  end

  describe "with blank content" do
    before { @clip.content = " " }
    it { should_not be_valid }
  end

  describe "with content that is too long" do
    before { @clip.content = "a" * 141 }
    it { should_not be_valid }
  end
