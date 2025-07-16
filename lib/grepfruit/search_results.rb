module Grepfruit
  class SearchResults
    attr_reader :all_lines, :raw_matches, :total_files_with_matches
    attr_accessor :total_files

    def initialize
      @all_lines = []
      @raw_matches = []
      @total_files = 0
      @total_files_with_matches = 0
    end

    def increment_files_with_matches
      @total_files_with_matches += 1
    end

    def add_lines(lines)
      @all_lines.concat(lines)
    end

    def add_raw_matches(matches)
      @raw_matches.concat(matches)
    end
  end
end
