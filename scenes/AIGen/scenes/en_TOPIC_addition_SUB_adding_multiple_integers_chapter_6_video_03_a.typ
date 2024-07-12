#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Mixed Single-Digit and Two-Digit Integers]
#v(40pt)

#only("1-")[Given: 7 + 14 + 21]
#v(20pt)

#only("2-")[Step 1: Add the single-digit number to the first two-digit number]
#v(10pt)
#only("3-")[7 + 14 = 21]
#v(20pt)

#only("4-")[Step 2: Add the result to the second two-digit number]
#v(10pt)
#only("5-")[21 + 21 = 42]

#only("1")[
#voiceover("Great job! You've correctly solved this problem. Let's go through the solution step-by-step.")
]

#only("2")[
#voiceover("We start with the expression 7 plus 14 plus 21.")
]

#only("3")[
#voiceover("First, let's add the single-digit number 7 to the first two-digit number 14. Seven plus fourteen equals twenty-one.")
]

#only("4")[
#voiceover("Now, we have 21 plus 21.")
]

#only("5")[
#voiceover("Adding these together, we get 42. So, the final answer is 42.")
]

#only("6")[
#voiceover("This method of adding from left to right, starting with the single-digit number, can be helpful when dealing with mixed single-digit and two-digit integers. It allows us to work with larger numbers first, which can sometimes make the calculation easier.")
]
]