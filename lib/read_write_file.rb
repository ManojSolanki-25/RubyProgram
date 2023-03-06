File.open("../bin/index.txt").each do |line|
     first_name,last_name=line.split(" ")
     puts "First Name : #{first_name}"
     puts "Last Name : #{last_name}"
end

arr = ["Saloni Ma'am","Ankit Sir","Simaran Ma'am","Sumit Sir"]

File.open("../bin/index.txt","a") do |file|
    arr.sort.each do |name|
        file.puts "#{name}"
    end
end
