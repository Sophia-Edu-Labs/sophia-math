#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Multiple Two-Digit Integers]
#v(40pt)

#only("1-")[Given: $15 + 25 + 35$]
#v(20pt)

#only("2-")[Step 1: Add the first two numbers]
#v(10pt)
#only("3-")[$15 + 25 = 40$]
#v(20pt)

#only("4-")[Step 2: Add the result to the third number]
#v(10pt)
#only("5-")[$40 + 35 = 75$]

#only("1")[
#voiceover("Great job! You've correctly solved this problem. Let's go through the solution step-by-step to understand how we arrive at the answer of 75.")
]

#only("2")[
#voiceover("We start with the expression 15 plus 25 plus 35. To solve this, we'll add the numbers from left to right.")
]

#only("3")[
#voiceover("First, we add 15 and 25. 15 plus 25 equals 40.")
]

#only("4")[
#voiceover("Now that we have 40, we need to add the last number, 35.")
]

#only("5")[
#voiceover("40 plus 35 equals 75. And that's our final answer!")
]

#only("6")[
#voiceover("This method of adding from left to right is a great strategy for adding multiple two-digit numbers. It allows us to break down the problem into simpler steps, making it easier to solve in our heads or on paper.")
]
]