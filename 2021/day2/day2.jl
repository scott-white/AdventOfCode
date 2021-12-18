# Day two of advent of code!
# Link: https://adventofcode.com/2021/day/2

input = readlines("2021/day2/day2-input.txt")

horiz, depth = 0, 0

for line in input
   command, value = split(line, " ")
   
    value = parse(Int, value)

   if command == "forward"
    horiz = horiz + value
   elseif command == "up"
    depth = depth - value
   else
    depth = depth + value
   end

   println("Horiz: ", horiz, " --- Depth: ", depth)
end

println(horiz * depth)