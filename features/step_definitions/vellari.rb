require 'net/http'

Given(/^I access "([^"]*)" url$/) do |website|
  uri = URI(website)
  @resp = Net::HTTP::get_response(uri)
end

Given(/^I verify the title matches "([^"]*)"$/) do |title|
  match = @resp.body.include? "<title>#{title}</title>"
  expect(match).to eq(true)
end

Given(/^I verify the response code is "([^"]*)"$/) do |code|
  expect(@resp.response.code).to eq(code)
end
