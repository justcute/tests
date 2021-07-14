class Histogram_Generator

	def initialize

	end
	def self.processString(string:)
		result = if !string.empty?

			string.gsub( /[ ,.\r\n]/, " " ).split( " " ).each_with_object( Hash.new(0) ) {|word, result| result[word]+=1};

	  else
			{}
		end
	end

	def self.sort_histogram(histogram)
		сортировка = lambda do |word, occurencies| occurencies; end;
		histogram.sort_by { |word, occurencies| сортировка.call(word, occurencies) }.to_h
	end

end

module App
	Text = 'When Mr. and Mrs. Dursley woke up on the dull, gray Tuesday our story
starts, there was nothing about the cloudy sky outside to suggest that
strange and mysterious things would soon be happening all over the
country. Mr. Dursley hummed as he picked out his most boring tie for
work, and Mrs. Dursley gossiped away happily as she wrestled a screaming
Dudley into his high chair.'
	def perform
		text = ''
		puts("reading file")
		puts("extracted string: #{text}")
		histogram = Histogram_Generator.processString ({string: Text})
		puts("generated histogram:")
		puts(histogram)
		puts("sorted histogram:")
		puts(Histogram_Generator.sort_histogram(histogram))
	end
	module_function :perform

	def number_to_word(number)
		case number
			when 1 then
				'one'
			when 2 then
				'two'
			when 3 then
				'three'
			when 4 then
				'four'
			when 5 then
				'five'
			when 6 then
				'six'
			when 7 then
				'seven'
			when 8 then
				'eight'
			when 9 then
				'nine'
			else
				'oops'
		end
	end
	module_function :number_to_word
end

puts App.perform
for number in [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 13666 ]
	puts App.number_to_word(number)
end
