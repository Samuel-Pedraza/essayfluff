# features to add

# 1) exact match, not partial
# 2) add multiple for the same word, and randomize them

puts "Enter the complete name of your document. \nMake sure it is a text doc (ending in .txt)"
document = gets.chomp

if (!document.include?(".txt"))
	return print "\nPlease use a document with the .txt suffix.\n.doc or any other suffix will not work.\n\n"
else
	file_content = open(document).read

	like 	= file_content.gsub(/like/, "along the lines of")
	infact  = like.gsub(/in fact/, "as a matter of fact")
	always  = infact.gsub(/always/, "at all times")
	now		= always.gsub(/now/, "at the present time")
	currently = now.gsub(/currently/, "at this point in time")
	because = currently.gsub(/because/, "because of the fact that")
	can 	= because.gsub(/can/, "have the ability to")
	although = can.gsub(/although/, "in spite of the fact that")
	finally = although.gsub(/finally/, "in the final analysis")
	by 		= finally.gsub(/by/, "by means of")
	keyFor 	= by.gsub(/for/, "for the purpose of")
	to 		= keyFor.gsub(/to/, "in order to")
	keyIf 	= to.gsub(/if/, "in the event that")
	about	= keyIf.gsub(/about/, "with reference to")
	keyWhen = about.gsub(/when/, "on the occasion of")

	output = open(document, "w")

	output.write(keyWhen)

	output.close
	x = open(document).read

	print x
end