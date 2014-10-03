module Trainstory
  class Person

    attr_accessor :name
    attr_accessor :questions

    def initialize name
      self.name = name
    end

    def ask_by_index index
      questions[index].answer
    end

    def say message
      puts message
    end

  end
end
