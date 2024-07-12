#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Multiple Two-Digit Integers]
#v(40pt)

#only("1-")[Given: 20 + 30 + 40]
#v(20pt)

#only("2-")[Step 1: Add first two numbers]
#v(10pt)
#only("3-")[20 + 30 = 50]
#v(20pt)

#only("4-")[Step 2: Add result to third number]
#v(10pt)
#only("5-")[50 + 40 = 90]

#only("1")[
#voiceover("That's okay! Let's walk through the correct solution step by step.")
]

#only("2")[
#voiceover("We start with the problem: twenty plus thirty plus forty.")
]

#only("3")[
#voiceover("First, let's add the first two numbers. Twenty plus thirty equals fifty.")
]

#only("4")[
#voiceover("Now, we have fifty from our first addition, and we need to add the last number, forty.")
]

#only("5")[
#voiceover("So, fifty plus forty equals ninety. And that's our final answer!")
]

#only("6")[
#voiceover("This method of adding from left to right works well with two-digit numbers. It's a great skill to practice for mental math!")
]
]