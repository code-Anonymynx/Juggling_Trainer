# Define an empty array to store juggling tricks
juggling_tricks = []

# Function to add a new juggling trick
function add_juggling_trick(name::String, description::String, difficulty::Int, siteswap::Int)
    trick_info = Dict("Name" => name, "Description" => description, "Difficulty" => difficulty, "Siteswap" => siteswap)
    push!(juggling_tricks, trick_info)
end

# Example usage:
# add_juggling_trick("Cascade", "Basic pattern with an even number of objects", 1, 333)

# Function to add a property to all juggling tricks
function add_property_to_all_tricks(property::String, value)
    for trick_info in values(juggling_tricks)
        trick_info[property] = value
    end
end

# Example usage:
# add_property_to_all_tricks("AltName", "Please Add")

# Populating the dictionary 
add_juggling_trick("Cascade", "Basic pattern with an even number of objects", 1, 333)
add_juggling_trick("1-High", "Cascade pattern with 1 ball thrown at a 5-height, changing the rhythm", 1, 33522)
add_juggling_trick("3-High", "Slow and high cascade pattern, all balls thrown at 5 height", 1, 555)
add_juggling_trick("Fountain", "Basic pattern with an odd number of objects", 3, 0)
add_juggling_trick("Tennis", "One ball thrown in reverse cascade", 1, 333)
add_juggling_trick("Reverse Cascade", "cascade pattern where all balls are thrown in reverse", 2, 333)
add_juggling_trick("Under Arm", "A cascade pattern where 1 ball is thrown under the opposing arm", 2, 333)
add_juggling_trick("Under Leg", "A cascade pattern where 1 ball is thrown under your leg", 2, 333)
add_juggling_trick("Behind Back", "A cascade pattern where 1 ball is thrown behind the back", 3, 333)

# Filtering juggling tricks with difficulty less than 2
easy_tricks = [trick for trick in juggling_tricks if trick["Difficulty"]<2]
# Filtering juggling tricks with difficulty equal to or less than 2
int_tricks = [trick for trick in juggling_tricks if trick["Difficulty"]≤2]
# Check which tricks have no siteswap listed
no_siteswap = [trick for trick in juggling_tricks if trick["Siteswap"]<1]

#function to add Number of Catches depending on difficulty - update this every time as trick levels change
function add_property_to_all_tricks(property::String)
    for trick_info in juggling_tricks
        difficulty = trick_info["Difficulty"]
        trick_info[property] = if difficulty == 1
            100
        elseif difficulty == 2
            50
        elseif difficulty == 3
            20
        else
            10
        end
    end
end

add_property_to_all_tricks("NumberOfCatches")

# Define an empty array to store easy drills
easy_drills = []
int_drills = []
full_drills = []

# Extract name and number of catches for each easy tricks
for trick_info in easy_tricks
    push!(easy_drills, (trick_info["Name"], trick_info["NumberOfCatches"]))
end
# Extract name and number of catches for int tricks (keep easy)
for trick_info in int_tricks
    push!(int_drills, (trick_info["Name"], trick_info["NumberOfCatches"]))
end
# Extract just name and number of catches for all tricks
for trick_info in juggling_tricks
    push!(full_drills, (trick_info["Name"], trick_info["NumberOfCatches"]))
end

# Assign lists to variables
easy = easy_drills 
medium = int_drills
hard = full_drills

# Emoji variables for different moods
😁 = hard         # I'm feeling great! Let's go! 
🙂 = medium       # I feel okay, with at least some energy.
😅 = easy         # I'm not feeling great, but I'll try...

# Display the list of drills based on mood
function display_trick_list(input)
    if input == 😅
        println("Your trick list for today is: \n \n", easy, "\n\nHappy Juggles 🥰")
    elseif input == 🙂
        println("Your trick list for today is: \n \n", medium, "\n\nHappy Juggles 🥰")
    else
        println("Your trick list for today is: \n \n", juggling_tricks, "\n\nHappy Juggles 🥰")
    end
end

# Example usage:
display_trick_list(😅)