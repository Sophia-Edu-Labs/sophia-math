#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Multiple Two-Digit Integers]
#v(40pt)

#only("1-")[Given: $12 + 22 + 32$]
#v(20pt)

#only("2-")[Step 1: Add the first two numbers]
#v(10pt)
#only("3-")[$12 + 22 = 34$]
#v(20pt)

#only("4-")[Step 2: Add the result to the third number]
#v(10pt)
#only("5-")[$34 + 32 = 66$]

#only("1")[
#voiceover("Not quite. Let's walk through the correct solution step-by-step.")
]

#only("2")[
#voiceover("We start with the expression 12 plus 22 plus 32. Our first step is to add the first two numbers.")
]

#only("3")[
#voiceover("12 plus 22 equals 34. We can do this by first adding the tens: 10 plus 20 is 30, and then the ones: 2 plus 2 is 4. So we get 34.")
]

#only("4")[
#voiceover("Now that we have 34, our next step is to add this result to the third number, 32.")
]

#only("5")[
#voiceover("34 plus 32 equals 66. Again, we can break this down: 30 plus 30 is 60, and 4 plus 2 is 6. So we get 66.")
]

#only("6")[
#voiceover("And there we have it! The sum of 12, 22, and 32 is indeed 66. This method of breaking down the addition into steps can be very helpful when dealing with multiple two-digit numbers.")
]
]