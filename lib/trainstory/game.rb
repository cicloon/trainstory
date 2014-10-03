module Trainstory

  class Game

    attr_accessor :key_people_discovered, :people

    def initialize
      self.people = []
    end

    def init
      self.key_people_discovered = []
    end

    def add_person person
      self.people << person
    end

  end

end
