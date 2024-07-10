#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Three Single-Digit Integers]
#v(40pt)

#only("1-")[Given: $ 1 + 2 + 3 $]
#v(20pt)

#only("2-")[Step 1: Add first two numbers]
#v(10pt)
#only("3-")[$ 1 + 2 = 3 $]
#v(20pt)

#only("4-")[Step 2: Add result to third number]
#v(10pt)
#only("5-")[$ 3 + 3 = 6 $]

#only("1")[
#voiceover("Great job! You've correctly solved this problem. Let's walk through the solution step-by-step to understand how we arrive at the answer of 6.")
]

#only("2")[
#voiceover("We start with the expression 1 plus 2 plus 3. To solve this, we'll add the numbers from left to right.")
]

#only("3")[
#voiceover("First, we add 1 and 2. One plus two equals three.")
]

#only("4")[
#voiceover("Now that we have this intermediate result, we move on to the next step.")
]

#only("5")[
#voiceover("We take our previous result, 3, and add it to the last number in our original expression, which is also 3. Three plus three equals six.")
]

#only("6")[
#voiceover("And there we have it! The sum of 1, 2, and 3 is indeed 6. This method of adding from left to right is a great way to handle addition problems with multiple numbers. Well done on solving this!")
]
]