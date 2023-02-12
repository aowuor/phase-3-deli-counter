# Write your code here.
katz_deli = []
def line (katz_deli)
    poistion = 1
    queue = []
    if katz_deli.length == 0
        puts "The line is currently empty."
    else
        katz_deli.each do |customer|
            queue.push("#{poistion}. #{customer}")
            poistion += 1
        end
        puts "The line is currently: #{queue.join(" ")}"
    end
end
puts line(["a", "x", "b"])

def take_a_number (katz_deli, customer)
    katz_deli << customer
    puts "Welcome, #{customer}. You are number #{katz_deli.length} in line." 
end

def now_serving(katz_deli)
    if katz_deli.empty?
        puts "There is nobody waiting to be served!" 
    else
        puts "Currently serving #{katz_deli[0]}."   
        katz_deli.shift
    end
end