#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mean of a Set of Numbers]
#v(40pt)
#only("1-")[- Given set: $ (22, 12, 24, 18, 20, 14, 16) $ 📊]
#v(20pt)
#only("2-")[- Step 1: Sum of all numbers ➕]
#v(20pt)
#only("3-")[- Step 2: Count of numbers 🔢]
#v(20pt)
#only("4-")[- Step 3: Mean = Sum / Count 🧮]
#v(20pt)
#only("5-")[- Final Answer: Mean = $18$ 🎉]
#only("1")[
#voiceover("That's okay! Let's go through the correct solution step-by-step. We start with the given set of numbers: 22, 12, 24, 18, 20, 14, and 16.")
]
#only("2")[
#voiceover("First, we need to find the sum of all the numbers in the set. So we add them up.")
]
#only("3")[
#voiceover("Next, we count the total number of numbers in the set. In this case, there are 7 numbers.")
]
#only("4")[
#voiceover("Now, we calculate the mean by dividing the sum by the count of numbers.")
]
#only("5")[
#voiceover("Finally, we find that the mean of the set is 18. Well done!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Sum of Numbers]
#v(40pt)
#only("1-")[- $22 + 12 + 24 + 18 + 20 + 14 + 16$ ➕]
#v(20pt)
#only("2-")[- Sum = $126$]
#only("1")[
#voiceover("In the first step, we add all the numbers together: 22 plus 12 plus 24 plus 18 plus 20 plus 14 plus 16.")
]
#only("2")[
#voiceover("The sum of these numbers is 126.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Count of Numbers]
#v(40pt)
#only("1-")[- Count of numbers in the set 🔢]
#v(20pt)
#only("2-")[- Count = $7$]
#only("1")[
#voiceover("In the second step, we count the total number of numbers in the set.")
]
#only("2")[
#voiceover("There are 7 numbers in the set.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Calculate the Mean]
#v(40pt)
#only("1-")[- Mean = Sum / Count 🧮]
#v(20pt)
#only("2-")[- Mean = $126 / 7$]
#v(20pt)
#only("3-")[- Mean = $18$ 🎉]
#only("1")[
#voiceover("In the third step, we calculate the mean by dividing the sum by the count of numbers.")
]
#only("2")[
#voiceover("So we divide 126 by 7.")
]
#only("3")[
#voiceover("The mean of the set is 18. Excellent work!")
]
]