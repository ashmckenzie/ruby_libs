require 'spec_helper'

require File.dirname(__FILE__) + '/../lib/string'

describe String do

  before :each do
    @strings = [
      [ ' some test string ', nil, 'some test string' ],
      [ '/test', '/', 'test' ],
      [ 'test/', '/', 'test' ],
      [ '/test/', '/', 'test' ],
      [ '//test//', '/', 'test' ],
    ]
  end

  it "should respond to the trim message" do
    s = 'some test string'
    s.should respond_to(:trim)
  end

  it "should trim the correct characters from given strings" do
    @strings.each do |s|
      s[0].trim(s[1]).should eql(s[2])
    end
  end

  after :each do
  end

end
