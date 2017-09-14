# test = specification !!!

require "spec_helper"
require "zombie"

describe Zombie do
  # your examples (tests) go here
  it "is named Ash" do# examples are declared using the "it" method
    zombie = Zombie.new
    zombie.name.should == 'Ash' # expectation (assertions)
  end

  it "has no brains" do
    zombie = Zombie.new
    zombie.brains.should < 1 # "should" is the modifier, and "1" is the matcher
  end

  it "is hungry" do
    zombie = Zombie.new
    zombie.hungry?.should == true
  end

end
