# -*- coding: utf-8 -*-

require 'spec_helper'

describe Trainstory::Person do

  describe "#name" do
    let(:person){ Trainstory::Person.new 'Pantolis' }
    it { expect(person.name).to eq 'Pantolis' }
  end

  # describe "#say" do
  #   let(:person){ Trainstory::Person.new 'Pantolis' }
  #   it { expect( person.say('hello') ).to eq 'hello'  }
  # end

  describe "#questions" do
    let(:person){ Trainstory::Person.new 'Pantolis' }
    let(:question1){ Trainstory::Question.new('¿Me robaste el bocadillo?', 'no') }
    let(:question2){ Trainstory::Question.new('Quién me robó el bocadillo?', 'Oskar') }

    before(:each){ person.questions = [question1, question2] }

    it { expect(person.questions).to eq [question1, question2] }
  end

  describe "#ask_by_index" do
    let(:person){ Trainstory::Person.new 'Pantolis' }
    let(:question1){ Trainstory::Question.new('¿Me robaste el bocadillo?', 'no') }
    let(:question2){ Trainstory::Question.new('Quién me robó el bocadillo?', 'Oskar') }

    before(:each){ person.questions = [question1, question2] }

    it { expect(person.ask_by_index(0)).to eq 'no' }
    it { expect(person.ask_by_index(1)).to eq 'Oskar' }
  end

end
