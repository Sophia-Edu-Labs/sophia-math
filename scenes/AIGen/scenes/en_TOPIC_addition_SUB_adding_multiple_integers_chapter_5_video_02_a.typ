#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Multiple Two-Digit Integers]
#v(40pt)

#only("1-")[Given: $11 + 22 + 33$]
#v(20pt)

#only("2-")[Step 1: Add first two numbers]
#v(10pt)
#only("3-")[$11 + 22 = 33$]
#v(20pt)

#only("4-")[Step 2: Add result to third number]
#v(10pt)
#only("5-")[$33 + 33 = 66$]

#only("1")[
#voiceover("Great job! You've correctly solved this problem. Let's walk through the solution step-by-step.")
]

#only("2")[
#voiceover("We start with the expression 11 plus 22 plus 33. Our first step is to add the first two numbers.")
]

#only("3")[
#voiceover("11 plus 22 equals 33. This is because 1 plus 2 in the ones place is 3, and 1 plus 2 in the tens place is also 3.")
]

#only("4")[
#voiceover("Now that we have 33, we need to add this result to the third number, which is also 33.")
]

#only("5")[
#voiceover("33 plus 33 equals 66. We can break this down: 3 plus 3 in the ones place is 6, and 3 plus 3 in the tens place is 6. So our final answer is 66.")
]

#only("6")[
#voiceover("This method of adding from left to right is a great strategy for mental math with multiple two-digit numbers. It allows us to work with easier numbers as we go along.")
]
]