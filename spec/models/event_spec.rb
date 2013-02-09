require 'spec_helper'

describe Event do
  before(:each) do
    @attr = {
      :name => 'Example Event' 
    }
  end

  it "should create a new instance given a name" do
    Event.create!(@attr)
  end
end
