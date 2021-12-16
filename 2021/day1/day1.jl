# Day one of advent of code!
# Link: https://adventofcode.com/2021/day/1

input = readlines("2021/day1/day1-input.txt")

# Part 1

input_nums = parse.(Int, input)

input_nums[2:end] - input_nums[1:(end - 1)]

count((input_nums[2:end] - input_nums[1:(end - 1)]) .> 0)


# Part 2

n = length(input_nums)

sums = []

for i in 1:(n - 2)
    append!(sums, sum(input_nums[i:(i + 2)]))
end

sums

count((sums[2:end] - sums[1:(end - 1)]) .> 0)