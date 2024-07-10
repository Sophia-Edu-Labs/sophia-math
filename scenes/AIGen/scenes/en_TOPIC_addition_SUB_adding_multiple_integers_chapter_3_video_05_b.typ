#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Four Single-Digit Integers]
#v(40pt)

#only("1-")[Given: $4 + 5 + 6 + 7$]
#v(20pt)

#only("2-")[Step 1: Add first two numbers]
#v(10pt)
#only("3-")[$4 + 5 = 9$]
#v(20pt)

#only("4-")[Step 2: Add result to third number]
#v(10pt)
#only("5-")[$9 + 6 = 15$]
#v(20pt)

#only("6-")[Step 3: Add result to fourth number]
#v(10pt)
#only("7-")[$15 + 7 = 22$]

#only("1")[
#voiceover("That's okay! Let's go through the correct solution step by step. We're adding four single-digit integers: 4, 5, 6, and 7.")
]

#only("2")[
#voiceover("Let's start by adding the first two numbers.")
]

#only("3")[
#voiceover("Four plus five equals nine.")
]

#only("4")[
#voiceover("Now, let's add this result to the third number.")
]

#only("5")[
#voiceover("Nine plus six equals fifteen.")
]

#only("6")[
#voiceover("Finally, we'll add this result to the fourth number.")
]

#only("7")[
#voiceover("Fifteen plus seven equals twenty-two. So, our final answer is twenty-two.")
]

#only("8")[
#voiceover("This step-by-step method shows us how to break down a larger addition problem into smaller, manageable steps. It's a useful technique when dealing with multiple numbers.")
]
]