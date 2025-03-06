input <- readLines("stdin", n=1)
nums <- as.numeric(strsplit(input, " ")[[1]])
cat(nums[1] + nums[2], "\n")