#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mean Calculation]
#v(40pt)
#only("1-")[- Given set: (140, 120, 160, 180, 200, 240, 220) 📊]
#v(20pt)
#only("2-")[- Step 1: Sum of all elements ➕]
#v(20pt)
#only("3-")[- Step 2: Count of elements 🔢]
#v(20pt)
#only("4-")[- Step 3: Mean = Sum / Count 🧮]
#v(20pt)
#only("5-")[- Result: Mean = 180 🎉]
#only("1")[
#voiceover("Not quite. Let's go over the correct solution for calculating the mean of the given set: 140, 120, 160, 180, 200, 240, 220.")
]
#only("2")[
#voiceover("First, we need to find the sum of all the elements in the set.")
]
#only("3")[
#voiceover("Next, we count the number of elements in the set.")
]
#only("4")[
#voiceover("Then, we divide the sum by the count to find the mean.")
]
#only("5")[
#voiceover("Finally, we get the mean, which is 180.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Sum of Elements]
#v(40pt)
#only("1-")[- 140 + 120 + 160 + 180 + 200 + 240 + 220 = 1260 ➕]
#only("1")[
#voiceover("First, we add all the elements together: 140 plus 120 plus 160 plus 180 plus 200 plus 240 plus 220 equals 1260.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Count of Elements]
#v(40pt)
#only("1-")[- Number of elements = 7 🔢]
#only("1")[
#voiceover("Next, we count the number of elements in the set, which is 7.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Calculate the Mean]
#v(40pt)
#only("1-")[- Mean = Sum / Count 🧮]
#v(20pt)
#only("2-")[- Mean = 1260 / 7]
#v(20pt)
#only("3-")[- Mean = 180 🎉]
#only("1")[
#voiceover("Now, we calculate the mean by dividing the sum by the count.")
]
#only("2")[
#voiceover("So, we have 1260 divided by 7.")
]
#only("3")[
#voiceover("This gives us a mean of 180.")
]
]