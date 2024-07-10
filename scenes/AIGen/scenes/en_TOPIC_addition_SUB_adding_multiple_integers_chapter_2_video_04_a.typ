#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Four Single-Digit Integers]
#v(40pt)

#only("1-")[Given: $3 + 4 + 5 + 6$]
#v(20pt)

#only("2-")[Step 1: Add first two numbers]
#v(10pt)
#only("3-")[$ 3 + 4 = 7 $]
#v(20pt)

#only("4-")[Step 2: Add result to third number]
#v(10pt)
#only("5-")[$ 7 + 5 = 12 $]
#v(20pt)

#only("6-")[Step 3: Add result to fourth number]
#v(10pt)
#only("7-")[$ 12 + 6 = 18 $]

#only("1")[
#voiceover("Great job! You've correctly solved this problem. Let's go through the process of adding three plus four plus five plus six.")
]

#only("2")[
#voiceover("We'll start by adding the first two numbers.")
]

#only("3")[
#voiceover("Three plus four equals seven.")
]

#only("4")[
#voiceover("Now, let's add this result to the third number.")
]

#only("5")[
#voiceover("Seven plus five equals twelve.")
]

#only("6")[
#voiceover("Finally, we'll add this result to the fourth number.")
]

#only("7")[
#voiceover("Twelve plus six equals eighteen. So, our final answer is eighteen.")
]

#only("8")[
#voiceover("This step-by-step method shows us how to break down the addition of multiple numbers into simpler steps. It's a useful technique when dealing with larger numbers or more complex additions.")
]
]