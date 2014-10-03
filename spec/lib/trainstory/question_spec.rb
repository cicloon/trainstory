# -*- coding: utf-8 -*-

require 'spec_helper'

describe Trainstory::Question do

  let(:question){Trainstory::Question.new('¿me has robado el sandwich?', 'no') }

  describe '#text' do
    it { expect(question.text).to eq '¿me has robado el sandwich?' }
  end

  describe '#answer' do
    it { expect(question.answer).to eq 'no' }
  end

  describe '#key_person' do
    let(:person){ Trainstory::Person.new('Pantolis') }
    before(:each){ question.key_person = person }
    it { expect( question.key_person ).to eq person }
  end

end
