require 'spec_helper'

require File.dirname(__FILE__) + '/../lib/string'

describe String do

  before :all do

    @trim_strings = [
      [ ' some test string ', nil, 'some test string' ],
      [ '/test', '/', 'test' ],
      [ 'test/', '/', 'test' ],
      [ '/test/', '/', 'test' ],
      [ '//test//', '/', 'test' ],
    ]

    @ltrim_strings = [
      [ ' some test string ', nil, 'some test string ' ],
      [ '/test', '/', 'test' ],
      [ 'test/', '/', 'test/' ],
      [ '/test/', '/', 'test/' ],
      [ '//test//', '/', 'test//' ],
    ]

    @rtrim_strings = [
      [ ' some test string ', nil, ' some test string' ],
      [ '/test', '/', '/test' ],
      [ 'test/', '/', 'test' ],
      [ '/test/', '/', '/test' ],
      [ '//test//', '/', '//test' ],
    ]

  end

  it "should respond to the trim message" do
    s = 'some test string'
    s.should respond_to(:trim)
  end

  it "should trim the correct characters from given trim array" do
    @trim_strings.each do |s|
      s[0].trim(s[1]).should eql(s[2])
    end
  end

  it "should trim the correct characters from given ltrim array" do
    @ltrim_strings.each do |s|
      s[0].ltrim(s[1]).should eql(s[2])
    end
  end

  it "should trim the correct characters from given rtrim array" do
    @rtrim_strings.each do |s|
      s[0].rtrim(s[1]).should eql(s[2])
    end
  end

end
