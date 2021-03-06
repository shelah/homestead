require 'rails_helper'

RSpec.describe "breeds/new", type: :view do
  before(:each) do
    assign(:breed, Breed.new(
      :name => "MyString"
    ))
  end

  it "renders new breed form" do
    render

    assert_select "form[action=?][method=?]", breeds_path, "post" do

      assert_select "input#breed_name[name=?]", "breed[name]"
    end
  end
end
