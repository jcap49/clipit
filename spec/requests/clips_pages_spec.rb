require 'spec_helper'

describe "ClipsPages" do

  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }

  describe "clip creation" do
    before { visit new_clip_path }

    describe "with invalid information" do

      it "should not create a clip" do
        expect { click_button "Create" }.not_to change(Clip, :content)
      end

      describe "error messages" do
        before { click_button "Post" }
        it { should have_content('error') }
      end
    end

    describe "with valid information" do

      before { fill_in 'clip_content', with: "lorem ipsum" }
      it "should create a clip" do
        expect { click_button "Post" }.to change(Clip, :count).by(1)
      end
    end
  end

  describe "micropost destruction" do
    before { FactoryGirl.create(:clip, user: user) }

    describe "as correct user" do
      before { visit clips_path }

      it "should delete a micropost" do
        expect { click_link "delete" }.to change(Clip, :count).by(-1)
      end
    end
  end
end
