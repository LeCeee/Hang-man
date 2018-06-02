
puts("welcome to HangMan")
puts("you have 5 chances to guess the word")

count = 5;
question =["elephant", "doggo" ,"cades","keechie","noddle", "birbs"]
q = question.sample
puts(q)

str = "_" *q.length
len = q.length
puts str

while len!=0 and count > 0 do 
	puts("\n enter letter")
  
	x = gets.chomp
	t = []

	if q.include? x.to_s
	  
		q.length.times {|i| t<< i if q[i] == x.to_s}
		t.each{|i| str[i]= x.to_s}
		len= len-t.length
    puts(str)
		puts(" \ncontinue, you have #{count} chances")
	
	else
		count= count-1
		puts("continue, you have #{count} chances")
		
	end

end

if count==0
	puts("/n game Over")
	puts("+---------------------------------+
|               |                 |
|               |                 |
|               O                 |
|              /|\\                |
|               |                 |
|              / \\                |
|         +----------+            |
|         |          |            |
+---------------------------------+
")
	
elsif $count!=0
	puts("/n you win")

end