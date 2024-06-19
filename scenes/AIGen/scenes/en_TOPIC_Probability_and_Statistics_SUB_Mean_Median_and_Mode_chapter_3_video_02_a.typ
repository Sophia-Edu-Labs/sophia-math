#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mean with Complex Numbers]
#v(40pt)
#only("1-")[- Given set: $\{10, 40, 20, 50, 30\}$ 📊]
#v(20pt)
#only("2-")[- Step 1: Sum of the elements ➕]
#v(20pt)
#only("3-")[- Step 2: Count of the elements 🔢]
#v(20pt)
#only("4-")[- Step 3: Mean = Sum / Count 🧮]
#v(20pt)
#only("5-")[- Final Answer: Mean = 30 🎉]

#only("1")[
#voiceover("Great job on solving the problem! Let's go through the solution step-by-step. We are given the set of numbers 10, 40, 20, 50, and 30.")
]
#only("2")[
#voiceover("First, we need to find the sum of these elements. We add 10, 40, 20, 50, and 30.")
]
#only("3")[
#voiceover("Next, we count the number of elements in the set. There are 5 elements.")
]
#only("4")[
#voiceover("Now, we calculate the mean by dividing the sum by the count of the elements.")
]
#only("5")[
#voiceover("Finally, the mean of the set is 30. Well done!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Sum of Elements]
#v(40pt)
#only("1-")[- $10 + 40 + 20 + 50 + 30 = 150$ ➕]

#only("1")[
#voiceover("In the first step, we add all the elements together. 10 plus 40 plus 20 plus 50 plus 30 equals 150.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Count of Elements]
#v(40pt)
#only("1-")[- Number of elements = 5 🔢]

#only("1")[
#voiceover("In the second step, we count the number of elements in the set. There are 5 elements.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Calculate Mean]
#v(40pt)
#only("1-")[- Mean = Sum / Count 🧮]
#v(20pt)
#only("2-")[- Mean = $150 / 5$]
#v(20pt)
#only("3-")[- Mean = 30 🎉]

#only("1")[
#voiceover("In the third step, we calculate the mean by dividing the sum by the count of the elements.")
]
#only("2")[
#voiceover("So, we divide 150 by 5.")
]
#only("3")[
#voiceover("The mean is 30. Excellent work!")
]
]