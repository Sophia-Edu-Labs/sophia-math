#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Multiple Two-Digit Integers]
#v(40pt)

#only("1-")[Given: $14 + 24 + 34$]
#v(20pt)

#only("2-")[Step 1: Add first two numbers]
#v(10pt)
#only("3-")[$14 + 24 = 38$]
#v(20pt)

#only("4-")[Step 2: Add result to third number]
#v(10pt)
#only("5-")[$38 + 34 = 72$]

#only("1")[
#voiceover("Not quite. Let's go through the solution step-by-step to understand how we arrive at 72.")
]

#only("2")[
#voiceover("We start with the expression 14 plus 24 plus 34. Our first step is to add the first two numbers.")
]

#only("3")[
#voiceover("14 plus 24 equals 38. We can break this down further: 10 plus 20 is 30, and 4 plus 4 is 8. So, 30 plus 8 gives us 38.")
]

#only("4")[
#voiceover("Now that we have 38, our next step is to add this result to the third number, 34.")
]

#only("5")[
#voiceover("38 plus 34 equals 72. Again, we can break this down: 30 plus 30 is 60, and 8 plus 4 is 12. So, 60 plus 12 gives us our final answer, 72.")
]

#only("6")[
#voiceover("And there we have it! We've confirmed that 14 plus 24 plus 34 indeed equals 72. This method of breaking down the addition into manageable steps is a great way to handle multiple two-digit numbers.")
]
]