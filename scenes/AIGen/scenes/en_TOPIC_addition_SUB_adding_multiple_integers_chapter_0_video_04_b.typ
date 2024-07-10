#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Three Equal Numbers]
#v(40pt)

#only("1-")[Given: $ 3 + 3 + 3 $]
#v(20pt)

#only("2-")[Step 1: Add first two numbers]
#v(10pt)
#only("3-")[$ 3 + 3 = 6 $]
#v(20pt)

#only("4-")[Step 2: Add result to third number]
#v(10pt)
#only("5-")[$ 6 + 3 = 9 $]

#only("1")[
#voiceover("Not quite. Let's go through the correct solution step by step.")
]

#only("2")[
#voiceover("We start with three plus three plus three.")
]

#only("3")[
#voiceover("First, let's add the first two numbers. Three plus three equals six.")
]

#only("4")[
#voiceover("Now, we have six plus the remaining three.")
]

#only("5")[
#voiceover("Six plus three equals nine. So, our final answer is nine.")
]

#only("6")[
#voiceover("This method of adding equal numbers is a great introduction to multiplication. In fact, adding three threes is the same as multiplying three by three!")
]
]