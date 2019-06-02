require 'anystyle'

def parse_biblio
	res = AnyStyle.parse """
	Turing, Alan, Computing Machinery and Intelligence, Mind 59, pp 433-460 (1950) 
	M. Salinas, P. Cignoni, D. Giorgi, Reviewernet: tool for doing things, ACTOG09, 2009
	M. Salinas, P. Cignoni, D. Giorgi, Reviewernet: tool for doing things things, C&G, 2019"""

	puts "#{res.size} papers parsed:"
	res.each_with_index { |n, idx| puts "title #{idx}: #{n[:title]}" }
end

puts("new client")
puts(Time.now.ctime)   # Send the time to the client

res = AnyStyle.parse """
Turing, Alan, Computing Machinery and Intelligence, Mind 59, pp 433-460 (1950) 
M. Salinas, P. Cignoni, D. Giorgi, Reviewernet: tool for doing things, ACTOG09, 2009
M. Salinas, P. Cignoni, D. Giorgi, Reviewernet: tool for doing things things, C&G, 2019"""

puts "#{res.size} papers parsed:"
res.each_with_index { |n, idx| puts "title #{idx}: #{n[:title]}" }
}