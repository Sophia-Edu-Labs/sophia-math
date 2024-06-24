#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mean Calculation]
#v(40pt)
#only("1-")[- Given set: (250, 350, 450, 150, 550, 650) 📊]
#v(20pt)
#only("2-")[- Step 1: Sum of all elements ➕]
#v(20pt)
#only("3-")[- Step 2: Number of elements 🔢]
#v(20pt)
#only("4-")[- Step 3: Mean = Sum / Number of elements 🧮]
#v(20pt)
#only("5-")[- Final Answer: Mean = 400 🎉]
#only("1")[
#voiceover("That's okay! Let's go through the correct solution step-by-step. First, we are given the set of numbers: 250, 350, 450, 150, 550, and 650.")
]
#only("2")[
#voiceover("Step 1: We need to find the sum of all the elements in the set. So, we add 250 plus 350 plus 450 plus 150 plus 550 plus 650.")
]
#only("3")[
#voiceover("Step 2: We count the number of elements in the set. There are 6 elements in total.")
]
#only("4")[
#voiceover("Step 3: To find the mean, we divide the sum of the elements by the number of elements. So, we divide 2400 by 6.")
]
#only("5")[
#voiceover("The final answer is that the mean of the set is 400. Well done!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Sum of Elements]
#v(40pt)
#only("1-")[- $250 + 350 + 450 + 150 + 550 + 650$ ➕]
#v(20pt)
#only("2-")[- Sum = $2400$]
#only("1")[
#voiceover("Let's start by adding all the numbers together. We have 250 plus 350 plus 450 plus 150 plus 550 plus 650.")
]
#only("2")[
#voiceover("The sum of these numbers is 2400.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Number of Elements]
#v(40pt)
#only("1-")[- Number of elements = $6$ 🔢]
#only("1")[
#voiceover("Next, we count the number of elements in the set. There are 6 numbers in total.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Calculate Mean]
#v(40pt)
#only("1-")[- Mean = $"sum"/"number of elements"$ 🧮]
#v(20pt)
#only("2-")[- Mean = $2400/6$]
#v(20pt)
#only("3-")[- Mean = $400$ 🎉]
#only("1")[
#voiceover("To find the mean, we divide the sum of the elements by the number of elements.")
]
#only("2")[
#voiceover("So, we divide 2400 by 6.")
]
#only("3")[
#voiceover("The mean of the set is 400. Excellent work!")
]
]