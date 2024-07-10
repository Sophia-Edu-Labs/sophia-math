#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Three Equal Numbers]
#v(40pt)

#only("1-")[Given: $ 4 + 4 + 4 $]
#v(20pt)

#only("2-")[Step 1: Add first two numbers]
#v(10pt)
#only("3-")[$ 4 + 4 = 8 $]
#v(20pt)

#only("4-")[Step 2: Add result to third number]
#v(10pt)
#only("5-")[$ 8 + 4 = 12 $]
#v(20pt)

#only("6-")[Final Answer: $ 12 $]

#only("1")[
#voiceover("Great job! You've correctly solved this problem. Let's go through the solution step-by-step to understand how we arrive at 12 when adding 4 plus 4 plus 4.")
]

#only("2")[
#voiceover("We'll start by adding the first two numbers.")
]

#only("3")[
#voiceover("Four plus four equals eight.")
]

#only("4")[
#voiceover("Now, let's add this result to the third number.")
]

#only("5")[
#voiceover("Eight plus four equals twelve.")
]

#only("6")[
#voiceover("So, our final answer is twelve. This method of adding numbers one at a time is a great way to solve addition problems, especially when working with equal numbers. It also helps us understand the concept of repeated addition, which is closely related to multiplication.")
]

#only("7")[
#voiceover("Remember, adding the same number multiple times is equivalent to multiplying. In this case, adding 4 three times (4 + 4 + 4) is the same as multiplying 4 by 3, which also equals 12. Great work on solving this problem!")
]
]