require 'spec_helper'

describe Trainstory::Person do

  let(:person){ Trainstory::Person.new }

  describe "#say" do
    it { expect( person.say('hello') ).to eq 'hello'  }
  end

end
