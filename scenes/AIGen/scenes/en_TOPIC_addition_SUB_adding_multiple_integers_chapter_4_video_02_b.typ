#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Multiple Two-Digit Integers]
#v(40pt)

#only("1-")[Given: $10 + 20 + 30$]
#v(20pt)

#only("2-")[Step 1: Add first two numbers]
#v(10pt)
#only("3-")[$10 + 20 = 30$]
#v(20pt)

#only("4-")[Step 2: Add result to third number]
#v(10pt)
#only("5-")[$30 + 30 = 60$]

#only("1")[
#voiceover("Not quite. Let's walk through the correct solution step-by-step.")
]

#only("2")[
#voiceover("We start with the expression 10 plus 20 plus 30. To solve this, we'll add the numbers from left to right.")
]

#only("3")[
#voiceover("First, we add 10 and 20. 10 plus 20 equals 30.")
]

#only("4")[
#voiceover("Now that we have this intermediate result, we move on to the next step.")
]

#only("5")[
#voiceover("We add our previous result, 30, to the last number in the original expression, which is also 30. 30 plus 30 equals 60.")
]

#only("6")[
#voiceover("So, our final answer is 60. This method of adding from left to right is a simple and effective way to add multiple two-digit numbers.")
]
]