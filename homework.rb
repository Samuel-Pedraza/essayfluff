# features to add

# 1) exact match, not partial
# 2) add multiple for the same word, and randomize them

puts "Enter the complete name of your document. \nMake sure it is a text doc (ending in .txt)"
document = gets.chomp

if (!document.include?(".txt"))
	return print "\nPlease use a document with the .txt suffix.\n.doc or any other suffix will not work.\n\n"
else
	file_content = open(document).read

	like 	= file_content.gsub(/\blike/, "along the lines of")
	infact  = like.gsub(/\bin fact/, "as a matter of fact")
	always  = infact.gsub(/\balways/, "at all times")
	now		= always.gsub(/\bnow/, "at the present time")
	currently = now.gsub(/\bcurrently/, "at this point in time")
	because = currently.gsub(/\bbecause/, "because of the fact that")
	can 	= because.gsub(/\bcan/, "have the ability to")
	although = can.gsub(/\balthough/, "in spite of the fact that")
	finally = although.gsub(/\bfinally/, "in the final analysis")
	by 		= finally.gsub(/\bby/, "by means of")
	keyFor 	= by.gsub(/\bfor/, "for the purpose of")
	to 		= keyFor.gsub(/\bto/, "in order to")
	keyIf 	= to.gsub(/\bif/, "in the event that")
	about	= keyIf.gsub(/\babout/, "with reference to")
	keyWhen = about.gsub(/\bwhen/, "on the occasion of")

	output = open(document, "w")

	output.write(keyWhen)

	output.close
	x = open(document).read

	print x
end