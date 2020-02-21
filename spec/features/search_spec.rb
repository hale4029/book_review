# As a user
# When I visit "/"
# And I input "the man who saw everything" into the form
# (Note: Use the existing search form)
# And I click "Find Book"
# Then I should be on page "/search"
# Then I should see the book's info
# For that book I should see
# - Title
# - Author
# - Genres
# (Note: genres is referred to as "subjects" in the book search response)
# I should also see:
# - This book has 2 reviews from the New York Times
#   (Note: reviews are the "summary" in the book review response)
# - Review 1: ""The Man Who Saw Everything,"" which was longlisted for the Booker Prize, looks at masculinity through the perspective of a young historian who sneers at "authoritarian old men.""
# Review Publication Date: 2019-10-09
# - Review 2: "Deborah Levy's latest novel, "The Man Who Saw Everything," experiments with time travel, history and the endless complications of love."
# Review Publication Date: 2019-10-15

require 'rails_helper'

describe('User can visit the welcome page') do
  it('and see a book search form') do
    visit root_path

    fill_in :title, with: "the man who saw everything"
    click_on 'Find Book'

    expect(current_path).to eq('/search')
    expect(page).to have_content('Title:')
    expect(page).to have_content('Author:')
    expect(page).to have_content('Genres:')
    expect(page).to have_css('#reviews', count: 2)
  end
end
