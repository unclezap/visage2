puts `clear`
string = "1234567890-=   qwertyuiop[]asdfghjkl;'zxcvbnm,./~!@#$%^&*()_+QWERTYUIOP|ASDFGHJKL:ZXCVBNM<>?"

array = string.split('')
new_string = ""

a = rand(0..67)
b = rand(0..67)
c = rand(0..67)
d = rand(0..67)
e = rand(0..67)
f = rand(0..67)
g = rand(0..67)
h = rand(0..67)
i = rand(0..67)
j = rand(0..67)
k = rand(0..67)
l = rand(0..67)
m = rand(0..67)

rand_array = [a,b,c,d,e,f,g,h,i,j,k,l,m]
chars = 8

1000.times do
    new_string = ""
    68.times do
        new_string << " "
    end

    i = 0

    while i < chars
        x = rand(0..67)
        new_string.insert(rand_array[i],"#{array[x]}")
        z = rand(0..8)
        if z == 1
            rand_array[i] = rand(0..67)
        elsif z > 7
            coin_flip = rand(-1..1)
            chars += coin_flip
        end
        i += 1
    end

    if chars < 1 || chars > 11
        chars = 8
    end
    
    puts new_string
    sleep(0.1)
end

puts ""
puts "It's time to stop dreaming, Neo"
sleep(3)
puts "Press enter"
gets