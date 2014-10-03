# -*- coding: utf-8 -*-

require 'spec_helper'

describe Trainstory::Game do

  let(:game){ Trainstory::Game.new }

  describe "#init" do

    let(:person1){ Trainstory::Person.new 'Pantolis' }

    it "should reset key people discovered" do
      game.key_people_discovered = [person1]
      game.init
      game.key_people_discovered.should eq []
    end
  end

  describe "#add_person" do
    let(:person1){ Trainstory::Person.new 'Pantolis' }
    let(:person2){ Trainstory::Person.new 'Hater Mex' }

    it "should add the people" do
      game.add_person person1
      game.add_person person2

      game.people.should eq [person1, person2]
    end
  end

  describe "#key_people_discovered" do
  end



end
