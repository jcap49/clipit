require 'spec_helper'

describe "Static pages" do

  let(:base_title) {"Clip.It - the easiest way to share the soundtrack of your memories"}

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it_should_behave_like "all static pages"
    it { should have_selector 'title' }
  end

  describe "Why page" do
    before { visit why_path }

    it_should_behave_like "all static pages"
    it { should have_selector 'title' }
  end

  describe "Examples" do
    before { visit example_path }

    it_should_behave_like "all static pages"
    it { should have_selector 'title'}
  end
end


