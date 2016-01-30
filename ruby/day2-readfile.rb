# Simple grep to print lines of a file containing a for regex
lineNumber = 1
File.foreach('day2-textfile.txt') do |x|
	if(x.match(/in/))
		puts lineNumber.to_s + ': ' + x
	end
	lineNumber += 1
end