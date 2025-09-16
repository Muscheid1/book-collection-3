require "rails_helper"

RSpec.describe "Books", type: :system do
  it "creates a book and shows home page notification" do
    visit root_path
    click_link "New Book"

    fill_in "Title", with: "example title"
    fill_in "Author", with: "example author"
    fill_in "Price", with: 1.00

    select "September", from: "book_published_date_2i"
    select "11",      from: "book_published_date_3i"
    select "2025",   from: "book_published_date_1i"
    click_button "Create Book"

    expect(page).to have_current_path(root_path)
    expect(page).to have_content("Book was successfully created.")
    expect(page).to have_content("example title")
 end 

 it "displays alert notification when no title given" do
   visit new_book_path
   fill_in "Title", with: ""
   fill_in "Author", with: "example author"
   fill_in "Price", with: 1.00
    select "September", from: "book_published_date_2i"
    select "11",      from: "book_published_date_3i"
    select "2025",   from: "book_published_date_1i"
   click_button "Create Book"

   expect(page).to have_content("Title can't be blank")
 end

 it "displays alert notification when no author given" do
    visit new_book_path
    fill_in "Title", with: "example title"
    fill_in "Author", with: ""
    fill_in "Price", with: 1.00
        select "September", from: "book_published_date_2i"
    select "11",      from: "book_published_date_3i"
    select "2025",   from: "book_published_date_1i"
    click_button "Create Book"
    expect(page).to have_content("Author can't be blank")
 end

   it "displays alert notification when no price given" do
    visit new_book_path
    fill_in "Title", with: "example title"
    fill_in "Author", with: "example author"
        select "September", from: "book_published_date_2i"
    select "11",      from: "book_published_date_3i"
    select "2025",   from: "book_published_date_1i"
    click_button "Create Book"
    expect(page).to have_content("Price can't be blank")
  end
end

