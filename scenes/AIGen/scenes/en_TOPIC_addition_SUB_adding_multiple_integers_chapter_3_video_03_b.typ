#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Four Equal Numbers]
#v(40pt)

#only("1-")[Given: $ 2 + 2 + 2 + 2 $]
#v(20pt)

#only("2-")[Step 1: Group numbers]
#v(10pt)
#only("3-")[$ (2 + 2) + (2 + 2) $]
#v(20pt)

#only("4-")[Step 2: Add within groups]
#v(10pt)
#only("5-")[$ 4 + 4 $]
#v(20pt)

#only("6-")[Step 3: Final addition]
#v(10pt)
#only("7-")[$ 4 + 4 = 8 $]

#only("1")[
#voiceover("Not quite. The correct answer is eight. Let's walk through the solution step by step to understand why.")
]

#only("2")[
#voiceover("First, let's group our numbers. This can make our addition easier.")
]

#only("3")[
#voiceover("We can rewrite our expression as two plus two, plus two plus two.")
]

#only("4")[
#voiceover("Now, let's add within these groups.")
]

#only("5")[
#voiceover("Two plus two equals four, so we now have four plus four.")
]

#only("6")[
#voiceover("Finally, let's perform our last addition.")
]

#only("7")[
#voiceover("Four plus four equals eight. And there we have it! We've shown why two plus two plus two plus two equals eight.")
]

#only("8")[
#voiceover("This method of grouping and adding is a great way to handle multiple additions, especially when we're adding the same number multiple times. It's also a stepping stone to understanding multiplication, as four times two is another way to express this same problem.")
]
]