require 'spec_helper'

describe Popolo::Count do
  [:option, :value].each do |attribute|
    it {should validate_presence_of attribute}
  end
end
