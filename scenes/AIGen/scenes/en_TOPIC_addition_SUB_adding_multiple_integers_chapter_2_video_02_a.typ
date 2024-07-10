#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Four Single-Digit Integers]
#v(40pt)

#only("1-")[Given: $ 1 + 2 + 3 + 4 $]
#v(20pt)

#only("2-")[Step 1: Add first two numbers]
#v(10pt)
#only("3-")[$ 1 + 2 = 3 $]
#v(20pt)

#only("4-")[Step 2: Add result to third number]
#v(10pt)
#only("5-")[$ 3 + 3 = 6 $]
#v(20pt)

#only("6-")[Step 3: Add result to fourth number]
#v(10pt)
#only("7-")[$ 6 + 4 = 10 $]

#only("1")[
#voiceover("Great job! You've correctly found that the sum of 1, 2, 3, and 4 is 10. Let's go through the solution step by step to understand how we arrive at this answer.")
]

#only("2")[
#voiceover("We'll start by adding the first two numbers.")
]

#only("3")[
#voiceover("One plus two equals three.")
]

#only("4")[
#voiceover("Now, let's add this result to the third number.")
]

#only("5")[
#voiceover("Three plus three equals six.")
]

#only("6")[
#voiceover("Finally, we'll add this result to the fourth number.")
]

#only("7")[
#voiceover("Six plus four equals ten. So, our final answer is ten, which matches your correct solution!")
]

#only("8")[
#voiceover("This step-by-step method shows us how we can break down the addition of multiple numbers into simpler, manageable steps. It's a useful technique when dealing with longer lists of numbers to add.")
]
]