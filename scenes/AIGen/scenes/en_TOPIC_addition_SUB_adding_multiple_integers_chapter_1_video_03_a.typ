#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Three Single-Digit Integers]
#v(40pt)

#only("1-")[Given: $2 + 3 + 4$]
#v(20pt)

#only("2-")[Step 1: Add first two numbers]
#v(10pt)
#only("3-")[$2 + 3 = 5$]
#v(20pt)

#only("4-")[Step 2: Add result to third number]
#v(10pt)
#only("5-")[$5 + 4 = 9$]
#v(20pt)

#only("6-")[Final Answer: $9$ ✅]

#only("1")[
#voiceover("Great job! You've correctly solved this problem. Let's go through the solution step-by-step to understand how we arrive at the answer 9.")
]

#only("2")[
#voiceover("We start with the expression 2 plus 3 plus 4. Our first step is to add the first two numbers.")
]

#only("3")[
#voiceover("2 plus 3 equals 5. So now we have 5 plus 4.")
]

#only("4")[
#voiceover("For our second and final step, we add this result to the third number.")
]

#only("5")[
#voiceover("5 plus 4 equals 9.")
]

#only("6")[
#voiceover("Therefore, our final answer is 9. This method of adding from left to right is a great way to handle addition of multiple numbers. Well done on solving this problem!")
]
]