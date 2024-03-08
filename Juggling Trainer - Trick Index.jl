# Number of catches based on skill level
l1 = "🤯 - 10 catches \n"
l2 = "🤤 - 20 catches \n"
l3 = "🧐 - 30 catches \n"
l4 = "😅 - 50 catches \n"
l5 = "😁 - 100 catches \n"

# Trick names and current level
t1 = "Cascade $l5"
t2 = "1-High $l4"
t3 = "3-High $l3"
t4 = "Tennis $l4"
t5 = "Reverse Cascade $l3"
t6 = "Under Arm $l4"
t7 = "Mills Mess $l3"
t8 = "W $l4"
t9 = "Columns $l3"
t10 = "Orbit: Columns $l4"

#This is for use later, altough you can use it to generate a random trick
Trick_Index = (t1, t2, t3, t4, t5, t6, t7, t8, t9, t10)
# Remeber Julia is in a 1 index 

m1 = "Your trick list for today is: \n"

easy = "$m1 $t1 $t2 $t4 $t6"
medium = "$m1 $t1 $t2 $t3 $t4 $t5 $t6 $t7"
hard = "$m1 $t1 $t2 $t3 $t4 $t5 $t6 $t7 $t8 $t9 $t10"

# Choose your list based on how you're feeling today
😁 = hard         # I'm feeling great! Let's go! 
🙂 = medium       # I feel okay, with at least some energy.
😅 = easy         # I'm not feeling great, but I'll try...

println(🙂)
