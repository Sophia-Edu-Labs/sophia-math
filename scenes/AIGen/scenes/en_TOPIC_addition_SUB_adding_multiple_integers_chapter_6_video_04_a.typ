#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Mixed Single-Digit and Two-Digit Integers]
#v(40pt)

#only("1-")[Exercise: Add 3 + 12 + 24]
#v(20pt)

#only("2-")[Step 1: Add the single-digit number to the first two-digit number]
#v(10pt)
#only("3-")[$ 3 + 12 = 15 $]
#v(20pt)

#only("4-")[Step 2: Add the result to the second two-digit number]
#v(10pt)
#only("5-")[$ 15 + 24 = 39 $]
#v(20pt)

#only("6-")[Final Answer: 39]

#only("1")[
#voiceover("Great job! You've correctly solved this addition problem. Let's go through the solution step-by-step to understand how we arrive at the answer 39.")
]

#only("2")[
#voiceover("First, let's start by adding the single-digit number to the first two-digit number. This makes our calculation easier.")
]

#only("3")[
#voiceover("Three plus twelve equals fifteen.")
]

#only("4")[
#voiceover("Now, we'll add this result to the remaining two-digit number.")
]

#only("5")[
#voiceover("Fifteen plus twenty-four equals thirty-nine.")
]

#only("6")[
#voiceover("So, our final answer is thirty-nine. This method of adding the smaller numbers first and then the larger ones can make mental math easier, especially when dealing with mixed single-digit and two-digit numbers.")
]
]