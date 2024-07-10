#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Four Single-Digit Integers]
#v(40pt)

#only("1-")[Exercise: $2 + 3 + 4 + 5$]
#v(20pt)

#only("2-")[Step 1: Add first two numbers]
#v(10pt)
#only("3-")[$ 2 + 3 = 5 $]
#v(20pt)

#only("4-")[Step 2: Add result to third number]
#v(10pt)
#only("5-")[$ 5 + 4 = 9 $]
#v(20pt)

#only("6-")[Step 3: Add result to fourth number]
#v(10pt)
#only("7-")[$ 9 + 5 = 14 $]

#only("1")[
#voiceover("That's okay! Let's go through the solution step by step to understand how we arrive at 14 when adding 2 plus 3 plus 4 plus 5.")
]

#only("2")[
#voiceover("We'll start by adding the first two numbers.")
]

#only("3")[
#voiceover("Two plus three equals five.")
]

#only("4")[
#voiceover("Now, let's add this result to the third number.")
]

#only("5")[
#voiceover("Five plus four equals nine.")
]

#only("6")[
#voiceover("Finally, we'll add this result to the fourth number.")
]

#only("7")[
#voiceover("Nine plus five equals fourteen. So, our final answer is fourteen.")
]

#only("8")[
#voiceover("This step-by-step method shows us how to add multiple numbers in sequence. It's a useful skill that you'll use often in more complex math problems. Great work on solving this!")
]
]