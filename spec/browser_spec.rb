require 'spec/spec_helper'
require 'taza/browser'
require 'taza/settings'
require 'taza/options'
require 'selenium'
require 'watir'

describe Taza::Browser do

  before :each do
    Taza::Settings.stubs(:config_file).returns({})
    ENV['TAZA_ENV'] = 'isolation'
    ENV['SERVER_PORT'] = nil
    ENV['SERVER_IP'] = nil
    ENV['BROWSER'] = nil
    ENV['DRIVER'] = nil
    ENV['TIMEOUT'] = nil
  end

  it "should raise unknown browser error for unsupported watir browsers" do
    lambda { Taza::Browser.create(:browser => :foo_browser_9000,:driver => :watir) }.should raise_error(StandardError)
  end

  it "should use params browser type when creating selenium" do
    browser_type = :opera
    Selenium::SeleniumDriver.expects(:new).with(anything,anything,'*opera',anything)
    Taza::Browser.create(:browser => browser_type, :driver => :selenium)
  end
  
  it "should raise selenium unsupported browser error" do
    Taza::Browser.create(:browser => :foo, :driver => :selenium)
  end

  it "should be able to create a selenium instance" do
    browser = Taza::Browser.create(:browser => :firefox, :driver => :selenium)
    browser.should be_a_kind_of(Selenium::SeleniumDriver)
  end

  it "should use environment settings for server port and ip" do
    Taza::Settings.stubs(:path).returns(File.join('spec','sandbox'))
    ENV['SERVER_PORT'] = 'server_port'
    ENV['SERVER_IP'] = 'server_ip'
    Selenium::SeleniumDriver.expects(:new).with('server_ip','server_port',anything,anything)
    Taza::Browser.create(Taza::Settings.config("SiteName"))
  end

  it "should use environment settings for timeout" do
    Taza::Settings.stubs(:path).returns(File.join('spec','sandbox'))
    ENV['TIMEOUT'] = 'timeout'
    Selenium::SeleniumDriver.expects(:new).with(anything,anything,anything,'timeout')
    Taza::Browser.create(Taza::Settings.config("SiteName"))
  end

  it "should be able to give you the class of browser" do
    Taza::Browser.expects(:watir_safari).returns(Object)
    Taza::Browser.browser_class(:browser => :safari, :driver => :watir).should eql(Object) 
  end
  
  it "should be able to attach to an open IE instance" do
    require 'watir'
    browser = Object.new
    Watir::IE.stubs(:find).returns(browser)
    Watir::IE.stubs(:new).returns(browser)
    old_browser = Watir::IE.new
    new_browser = Taza::Browser.create(:browser => :ie, :driver => :watir, :attach => true) 
    new_browser.should eql(old_browser)
  end
  
  it "should be able to open a new IE instance if there is no instance to attach to" do
    require 'watir'
    browser = Object.new
    Watir::IE.stubs(:find).returns()
    Watir::IE.stubs(:new).returns(browser)
    new_browser = Taza::Browser.create(:browser => :ie, :driver => :watir) 
    browser.nil?.should be_false 
  end
  it "should be able to open a new IE instance if attach not specified" do
    require 'watir'
    foo = Object.new
    bar = Object.new
    Watir::IE.stubs(:find).returns(foo)
    Watir::IE.stubs(:new).returns(bar)
    new_browser = Taza::Browser.create(:browser => :ie, :driver => :watir) 
    new_browser.should_not eql(foo)
  end
end
