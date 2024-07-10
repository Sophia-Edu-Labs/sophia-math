#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Four Equal Numbers]
#v(40pt)

#only("1-")[Given: $ 3 + 3 + 3 + 3 $]
#v(20pt)

#only("2-")[Step 1: Group numbers]
#v(10pt)
#only("3-")[$ (3 + 3) + (3 + 3) $]
#v(20pt)

#only("4-")[Step 2: Add each group]
#v(10pt)
#only("5-")[$ 6 + 6 $]
#v(20pt)

#only("6-")[Step 3: Add results]
#v(10pt)
#only("7-")[$ 6 + 6 = 12 $]

#only("1")[
#voiceover("Not quite, but let's go through the correct solution step by step. We're adding three plus three plus three plus three.")
]

#only("2")[
#voiceover("First, let's group these numbers to make our addition easier.")
]

#only("3")[
#voiceover("We can group them as three plus three, and then another three plus three.")
]

#only("4")[
#voiceover("Now, let's add each group separately.")
]

#only("5")[
#voiceover("Three plus three equals six, so we now have six plus six.")
]

#only("6")[
#voiceover("Finally, let's add these results together.")
]

#only("7")[
#voiceover("Six plus six equals twelve. So, our final answer is twelve.")
]

#only("8")[
#voiceover("This method of grouping and adding is a great strategy for adding multiple equal numbers. It's also a stepping stone to understanding multiplication, as adding four threes is the same as multiplying four by three!")
]
]