Given(/^I have a calculator$/) do
  @calculator = Calculator.new
end

Given(/^I have the number (\d+)$/) do |num|
  @calculator << num
end

When(/^I add them together$/) do
  @result = @calculator.add
end

When(/^I subtract them$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see (-?\d+) in the terminal$/) do |num|
  assert_equal num.to_i, @result
end