require 'spec_helper'

describe 'application' do

  it '.iced should be registered as engine' do
    Rails.application.assets.engines.keys.include?('.iced').should == true
  end

end