#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Median Calculation]
#v(40pt)
#only("1-")[- Given set: (4, 8, 12, 16, 20, 24) 📊]
#v(20pt)
#only("2-")[- Step 1: Arrange the set in ascending order ⬆️]
#v(20pt)
#only("3-")[- Step 2: Identify the middle number(s) 🔍]
#v(20pt)
#only("4-")[- Step 3: Calculate the median 🧮]
#only("1")[
#voiceover("That's okay! Let's go through the correct solution step-by-step. We start with the given set of numbers: 4, 8, 12, 16, 20, and 24.")
]
#only("2")[
#voiceover("First, we need to arrange the set in ascending order. In this case, the set is already arranged: 4, 8, 12, 16, 20, and 24.")
]
#only("3")[
#voiceover("Next, we identify the middle number or numbers. Since there are six numbers in the set, we take the two middle numbers: 12 and 16.")
]
#only("4")[
#voiceover("Finally, we calculate the median by taking the average of the two middle numbers. So, the median is (12 + 16) divided by 2, which equals 14.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Calculation]
#v(40pt)
#only("1-")[- Middle numbers: 12 and 16 🔢]
#v(20pt)
#only("2-")[- Median = (12 + 16) / 2]
#v(20pt)
#only("3-")[- Median = 14 🎉]
#only("1")[
#voiceover("Let's break down the calculation. The middle numbers are 12 and 16.")
]
#only("2")[
#voiceover("To find the median, we add these two numbers and then divide by 2. So, we have 12 plus 16, divided by 2.")
]
#only("3")[
#voiceover("This gives us a median of 14. Well done!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- Median of (4, 8, 12, 16, 20, 24) is 14 🎯]
#v(20pt)
#only("2-")[- Median is the middle value in a sorted set 📏]
#only("1")[
#voiceover("To conclude, the median of the set 4, 8, 12, 16, 20, and 24 is 14.")
]
#only("2")[
#voiceover("Remember, the median is the middle value in a sorted set of numbers. Great job on solving this exercise!")
]
]