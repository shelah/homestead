require 'rails_helper'

RSpec.describe "breeds/index", type: :view do
  before(:each) do
    assign(:breeds, [
      Breed.create!(
        :name => "Name"
      ),
      Breed.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of breeds" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
