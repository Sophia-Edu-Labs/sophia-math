#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Three Single-Digit Integers]
#v(40pt)

#only("1-")[Given: $2 + 4 + 5$]
#v(20pt)

#only("2-")[Step 1: Add first two numbers]
#v(10pt)
#only("3-")[$2 + 4 = 6$]
#v(20pt)

#only("4-")[Step 2: Add result to third number]
#v(10pt)
#only("5-")[$6 + 5 = 11$]

#only("1")[
#voiceover("Great job! You've correctly solved this addition problem. Let's walk through the solution step-by-step.")
]

#only("2")[
#voiceover("We start with the expression 2 plus 4 plus 5. Our first step is to add the first two numbers.")
]

#only("3")[
#voiceover("2 plus 4 equals 6. So now we have 6 plus 5.")
]

#only("4")[
#voiceover("For our second and final step, we add this result to the third number.")
]

#only("5")[
#voiceover("6 plus 5 equals 11. And there we have it! The sum of 2, 4, and 5 is indeed 11.")
]

#only("6")[
#voiceover("This method of adding from left to right is one way to solve the problem. Remember, due to the commutative property of addition, we could have added these numbers in any order and still gotten the same result.")
]
]