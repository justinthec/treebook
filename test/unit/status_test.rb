require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  test "that a status requires content" do
  	status = Status.new
  	assert !status.save
  	assert !status.errors[:content].empty?
  end

  test "that a status requires content of at least 2 letters long" do
  	status = Status.new
  	status.content = "a"
  	assert !status.save
  	assert !status.errors[:content].empty?
  end

  test "that a status requires a user id" do
  	status = Status.new
  	status.content = "apple"
  	assert !status.save
  	assert !status.errors[:user_id].empty?
  end
end
