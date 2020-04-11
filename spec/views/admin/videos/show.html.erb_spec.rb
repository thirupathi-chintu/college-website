require 'rails_helper'

RSpec.describe "admin/videos/show", type: :view do
  let(:user) { Signup::User.create(firstname: 'Rails', lastname: 'Admin', email: 'a@s.com', password: 'secret', admin: true) }
  before do
    assign(:current_user, user)
  end

  before(:each) do
    @admin_video = assign(:admin_video, Admin::Video.create!(
      :name => "Name",
      :link => "Link",
      :details => "Details"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Link/)
    expect(rendered).to match(/Details/)
  end
end
