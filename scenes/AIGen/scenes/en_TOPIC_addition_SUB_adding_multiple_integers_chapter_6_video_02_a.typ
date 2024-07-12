#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Mixed Single-Digit and Two-Digit Integers]
#v(40pt)

#only("1-")[Given: $ 5 + 10 + 15 $]
#v(20pt)

#only("2-")[Step 1: Add the first two numbers]
#v(10pt)
#only("3-")[$ 5 + 10 = 15 $]
#v(20pt)

#only("4-")[Step 2: Add the result to the third number]
#v(10pt)
#only("5-")[$ 15 + 15 = 30 $]

#only("1")[
#voiceover("Great job! You've correctly solved this addition problem. Let's go through the solution step by step.")
]

#only("2")[
#voiceover("We start with the expression 5 plus 10 plus 15. Our first step is to add the first two numbers.")
]

#only("3")[
#voiceover("5 plus 10 equals 15. This gives us an intermediate result.")
]

#only("4")[
#voiceover("Now, we take this intermediate result and add it to the third number.")
]

#only("5")[
#voiceover("15 plus 15 equals 30. And there we have our final answer!")
]

#only("6")[
#voiceover("This method of adding from left to right works well when dealing with a mix of single-digit and two-digit numbers. It allows us to build up the sum gradually, making the calculation easier to manage.")
]
]