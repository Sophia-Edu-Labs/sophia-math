#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Four Single-Digit Integers]
#v(40pt)

#only("1-")[Given: $ 1 + 1 + 1 + 1 $]
#v(20pt)

#only("2-")[Step 1: Add first two numbers]
#v(10pt)
#only("3-")[$ 1 + 1 = 2 $]
#v(20pt)

#only("4-")[Step 2: Add result to third number]
#v(10pt)
#only("5-")[$ 2 + 1 = 3 $]
#v(20pt)

#only("6-")[Step 3: Add result to fourth number]
#v(10pt)
#only("7-")[$ 3 + 1 = 4 $]

#only("1")[
#voiceover("That's okay! Let's go through the solution step by step to understand how we arrive at the correct answer of 4 when adding 1 plus 1 plus 1 plus 1.")
]

#only("2")[
#voiceover("We'll start by adding the first two numbers.")
]

#only("3")[
#voiceover("One plus one equals two.")
]

#only("4")[
#voiceover("Now, let's add this result to the third number.")
]

#only("5")[
#voiceover("Two plus one equals three.")
]

#only("6")[
#voiceover("Finally, we'll add this result to the fourth number.")
]

#only("7")[
#voiceover("Three plus one equals four. So, our final answer is four.")
]

#only("8")[
#voiceover("This step-by-step method shows us how repeated addition works. It's also a great way to visualize why adding four ones is the same as the number four itself. Well done on solving this problem!")
]
]