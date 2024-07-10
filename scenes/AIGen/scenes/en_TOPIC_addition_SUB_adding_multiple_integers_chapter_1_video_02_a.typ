#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Three Single-Digit Integers]
#v(40pt)

#only("1-")[Given: $ 1 + 1 + 1 $]
#v(20pt)

#only("2-")[Step 1: Add first two numbers]
#v(10pt)
#only("3-")[$ 1 + 1 = 2 $]
#v(20pt)

#only("4-")[Step 2: Add result to third number]
#v(10pt)
#only("5-")[$ 2 + 1 = 3 $]

#only("1")[
#voiceover("Great job! You got the correct answer. Let's walk through the solution step by step.")
]

#only("2")[
#voiceover("We start with the expression one plus one plus one.")
]

#only("3")[
#voiceover("First, let's add the first two numbers. One plus one equals two.")
]

#only("4")[
#voiceover("Now, we have two plus one left to calculate.")
]

#only("5")[
#voiceover("Adding two and one gives us three. So, the final answer is three.")
]

#only("6")[
#voiceover("This process demonstrates how we can break down the addition of multiple numbers into simpler steps. It's a great foundation for understanding more complex addition problems in the future!")
]
]