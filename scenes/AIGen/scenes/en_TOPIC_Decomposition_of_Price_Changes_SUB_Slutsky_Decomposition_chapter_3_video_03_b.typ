#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Total Effect]
#v(40pt)
#only("1-")[- Substitution effect: 5 → 7 units]
#v(20pt)
#only("2-")[- Income effect: 7 → 9 units]
#v(20pt)
#only("3-")[- Total effect: ?]
#only("1")[
#voiceover("That's not quite right. Let's review the correct solution step-by-step. We are given that the substitution effect increases the quantity demanded from 5 to 7 units.")
]
#only("2")[  
#voiceover("And the income effect further increases it from 7 to 9 units.")
]
#only("3")[
#voiceover("Now, what we're looking for is the total effect, which is the overall change in quantity demanded due to both these effects combined.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. Substitution effect: $7 - 5 = 2$ units]
#v(20pt)
#only("2-")[2. Income effect: $9 - 7 = 2$ units]
#v(20pt) 
#only("3-")[3. Total effect: Substitution + Income]
#v(20pt)
#only("4-")[   $= 2 + 2 = 4$ units]
#v(20pt)
#only("5-")[So, the total effect is an increase of 4 units. 📈]
#only("1")[
#voiceover("First, let's quantify the substitution effect. It's the change from 5 to 7 units, which is an increase of 2 units.")
]
#only("2")[
#voiceover("Similarly, the income effect is the change from 7 to 9 units, which is also an increase of 2 units.")  
]
#only("3")[
#voiceover("Now, the total effect is simply the sum of the substitution effect and the income effect.")
]
#only("4")[
#voiceover("2 units from the substitution effect plus 2 units from the income effect equals a total of 4 units.")
]
#only("5")[
#voiceover("Therefore, the total effect of the price change is an increase in quantity demanded by 4 units. Excellent work in solving this problem!")
]
]