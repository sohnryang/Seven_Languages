class ActsAsCsv
    def read
        file = File.new(self.class.to_s.downcase + '.txt')
        @headers = file.gets.chomp.split(', ')

        file.each do |row|
            @result << row.chomp.split(', ')
        end
    end

    def headers
        @headers
    end

    def csv_contents
        @result
    end

    def initialize
        @result = []
        read
    end
end

class RubyCsv < ActsAsCsv
    include Enumerable

    def initialize
        super

        @rows = []
        headers.each_with_index do |element, index|
            @rows << CsvRow.new(element => csv_contents[0][index])
        end
    end

    def rows
        @rows
    end

    def <<(val)
        @rows << val
    end

    def each(&block)
        @rows.each(&block)
    end
end

class CsvRow
    def method_missing(methId)
        @map[methId.id2name]
    end

    def initialize(map)
        @map = map
    end

    def map
        @map
    end
end

csv = RubyCsv.new
csv.each { |row| puts row.one }
