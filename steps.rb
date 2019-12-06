require 'test/unit/assertions'
World(Test::Unit::Assertions)

#Given the input <input>
Given(/^the input (\d+)\+(\d+)$/) do |arg1, arg2|
  @input1 = arg1_to_i
  @input2 = arg2_to_i
end

##When the calculator is run
#When(/^the calculator is run$/) do
#  @actualoutput =@input1+@input2 
#end
#
##Then the output should be <output>
#Then(/^the output should be (\d+)$/) do |expectedOutput|
#  assert.equal(@actualOutput, expectedOutput_to_i  )
#end
