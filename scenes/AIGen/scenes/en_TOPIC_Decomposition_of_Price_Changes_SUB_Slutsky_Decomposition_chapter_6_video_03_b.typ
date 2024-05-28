#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Problem]
#v(40pt)
- Price of good X decreases from $\$10$ to $\$8$
- Total quantity demanded increases from $5$ to $9$ units
- Substitution effect increases quantity demanded to $7$ units
#v(40pt)
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
What is the income effect? 🤔
#only("1")[
#voiceover("That's not quite right. Let's go through the correct solution step by step.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Recall Slutsky Decomposition]
#v(40pt)
$"Total Effect" = "Substitution Effect" + "Income Effect"$
#v(40pt)
#text(size: 30pt, weight: "bold")[Given]
#v(40pt)
- Total Effect: $9 - 5 = 4$ units
- Substitution Effect: $7 - 5 = 2$ units
#only("1")[
#voiceover("First, let's recall the Slutsky Decomposition. It states that the Total Effect is equal to the Substitution Effect plus the Income Effect.")
]
#only("2")[
#voiceover("We're given that the Total Effect is an increase from 5 to 9 units, which is 4 units. And the Substitution Effect is an increase from 5 to 7 units, which is 2 units.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Solve for Income Effect]
#v(40pt)
$"Income Effect" = "Total Effect" - "Substitution Effect"$
#v(20pt)
$"Income Effect" = 4 - 2 = 2$ units
#v(40pt)
#text(size: 30pt, weight: "bold")[Answer]
#v(40pt)
The income effect is an increase of $2$ units. ✅
#only("1")[
#voiceover("Now, we can solve for the Income Effect. It's the Total Effect minus the Substitution Effect.")
]
#only("2")[
#voiceover("Plugging in the values, we get the Income Effect equals 4 minus 2, which is 2 units.")
]
#only("3")[
#voiceover("Therefore, the income effect is an increase of 2 units. Excellent work!")
]
]