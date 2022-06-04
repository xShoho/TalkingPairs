class TalkPairs
	attr_accessor :elements
	attr_reader :count

	def initialize()
		@elements = []
		@count = 0
	end

	def checkPairs
		for i in (0..@elements.length - 1) do
			for j in (i + 1..@elements.length - 1) do
				minimum = [@elements[i], @elements[j]].min

				if i == j - 1
					@count += 1
				elsif elements[j - 1] < minimum
					@count += 1
				else
					break
				end
			end
		end
	end
end

talkPairs = TalkPairs.new

length = gets.chomp

begin
	length = Integer(length)

	if length < 1 || length > 500000
		raise StandardError.new "Length is too large or too small"
	end

	arr = gets.chomp
	arr = arr.split

	if arr.length > length
		raise StandardError.new "You inserted more elements: #{ arr.length } than you stated: #{ length }"
	end

	arr = arr.map { |e| Integer(e) }

	for i in arr do
		if i > 1000000
			raise StandardError.new "Value is too large"
		end
	end

	talkPairs.elements = arr
	talkPairs.checkPairs

	puts talkPairs.count
rescue StandardError => e
	puts e
end