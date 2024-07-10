#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Three Single-Digit Integers]
#v(40pt)

#only("1-")[Given: $3 + 5 + 2$]
#v(20pt)

#only("2-")[Step 1: Add first two numbers]
#v(10pt)
#only("3-")[$3 + 5 = 8$]
#v(20pt)

#only("4-")[Step 2: Add result to third number]
#v(10pt)
#only("5-")[$8 + 2 = 10$]

#only("1")[
#voiceover("That's not quite right. Let's walk through the correct solution step by step.")
]

#only("2")[
#voiceover("We'll start by adding the first two numbers.")
]

#only("3")[
#voiceover("Three plus five equals eight.")
]

#only("4")[
#voiceover("Now, let's add this result to the third number.")
]

#only("5")[
#voiceover("Eight plus two equals ten. So, our final answer is ten.")
]

#only("6")[
#voiceover("This method of adding from left to right is a great way to handle addition of multiple numbers. It allows us to break down the problem into smaller, manageable steps.")
]
]