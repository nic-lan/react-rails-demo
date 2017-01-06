require "rails_helper"

describe "Posts Index", type: :feature, js: true do
  let!(:post1) { create :post, title: "First post", description: "a first description"}
  let!(:post2) { create :post, title: "Second post", description: "a second description" }

  it "shows all the existing posts" do
    visit posts_path

    expect(page).to have_content "First post a first description"
    expect(page).to have_content "Second post a second description"
  end
end
