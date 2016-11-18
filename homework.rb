# 1) 
# 2) 
# 3) 

file_content = open("word.txt").read

like 	= file_content.gsub(/like/, "along the lines of")
by 		= like.gsub(/by/, "by means of")
keyFor 	= by.gsub(/for/, "for the purpose of")
to 		= keyFor.gsub(/to/, "in order to")
keyIf 	= to.gsub(/if/, "in the event that")
about	= keyIf.gsub(/about/, "with reference to")
keyWhen = about.gsub(/when/, "on the occasion of")

arrOfContent = [like, by, keyFor, to, keyIf, about, keyWhen]

output = open("word.txt", "w")

output.write(keyWhen)

output.close
x = open("word.txt").read

print x

