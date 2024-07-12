#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Multiple Two-Digit Integers]
#v(40pt)

#only("1-")[Given: 18 + 28 + 38]
#v(20pt)

#only("2-")[Step 1: Add the first two numbers]
#v(10pt)
#only("3-")[18 + 28 = 46]
#v(20pt)

#only("4-")[Step 2: Add the result to the third number]
#v(10pt)
#only("5-")[46 + 38 = 84]

#only("1")[
#voiceover("Not quite. Let's go through the solution step-by-step to understand how we arrive at 84.")
]

#only("2")[
#voiceover("We start with the expression 18 plus 28 plus 38. To solve this, we'll add the numbers from left to right.")
]

#only("3")[
#voiceover("First, let's add 18 and 28. 8 plus 8 equals 16, so we write down 6 and carry 1. Then, 1 plus 1 plus 2 equals 4. So, 18 plus 28 equals 46.")
]

#only("4")[
#voiceover("Now that we have 46, we need to add 38 to this result.")
]

#only("5")[
#voiceover("6 plus 8 equals 14, so we write down 4 and carry 1. Then, 4 plus 3 plus the carried 1 equals 8. Therefore, 46 plus 38 equals 84, which is our final answer.")
]

#only("6")[
#voiceover("This method of adding from left to right is efficient for adding multiple two-digit numbers. It's important to keep track of carried digits and to double-check your work to ensure accuracy.")
]
]