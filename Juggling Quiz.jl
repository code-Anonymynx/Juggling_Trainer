# Juggling Quiz

# Question One
println("How is a 3-ball cascade noted in siteswap? \n A - 300, \n B - cascade \n C - 333")
#Take single line user input from the user
Answer = readline()

if Answer == "C"
    println("Correct! It's written as 3 or 333.")
elseif Answer == "333"
    println("Correct! It's written as 3 or  333.")
elseif Answer == "C - 333"
    println("Correct! It's written as 3 or  333.")
elseif Answer == "3"
    println("Correct! It's written as 3 or  333.")   
else 
    println("Not quite! It's actually written 333.")
end

# Question Two
println("Is it possible to juggle 7 clubs? (Please enter 'Yes' OR 'No')")
Answer3 = readline()

if Answer3 == "Yes"
    println("You know it! But it takes a looooong time!")
else 
    println("Actually there are a number of jugglers across the globe who can juggle 7 clubs! Some can even juggle more.")
end

# Set up for Question Three
# Packages required for image display
using Pkg
Pkg.add("ImageIO")
using ImageIO

# Load an image file
img = load("/Users/user/Documents/Coding Stuff/Juggling App/yoyo copy Small.jpeg")  

# Display the image
display(img)

# Question Three - based on the image above
println("What is this juggling pattern called? \n A - 423 \n B - tracing my column \n C - yoyo \n")
Answer3 = readline()

if Answer3 == "C"
    println("Absolutely! It's most commonly called 'yoyo'")
elseif Answer3 == "yoyo"
    println("Absolutely! It's most commonly called 'yoyo'")
elseif Answer3 == "C - yoyo"
    println("Absolutely! It's most commonly called 'yoyo'")
else 
    println("Not quite! It's most commonly called 'yoyo'")
end