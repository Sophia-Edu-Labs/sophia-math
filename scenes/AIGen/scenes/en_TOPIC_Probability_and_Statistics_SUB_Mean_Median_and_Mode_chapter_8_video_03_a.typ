#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding the Median]
#v(40pt)
#only("1-")[- Given set: (32, 30, 22, 26, 24, 28) 📊]
#v(20pt)
#only("2-")[- Step 1: Arrange the numbers in ascending order 📈]
#v(20pt)
#only("3-")[- Ordered set: (22, 24, 26, 28, 30, 32) 🗂️]
#v(20pt)
#only("4-")[- Step 2: Find the middle numbers 🔎]
#v(20pt)
#only("5-")[- Middle numbers: 26 and 28 🔍]
#v(20pt)
#only("6-")[- Step 3: Calculate the median 🧮]
#v(20pt)
#only("7-")[- Median: (26 + 28) / 2 = 27 🏆]
#v(20pt)
#only("1")[
#voiceover("Great job! Let's find the median of the set (32, 30, 22, 26, 24, 28).")
]
#only("2")[
#voiceover("First, we need to arrange the numbers in ascending order.")
]
#only("3")[
#voiceover("The ordered set is (22, 24, 26, 28, 30, 32).")
]
#only("4")[
#voiceover("Next, we find the middle numbers of the ordered set.")
]
#only("5")[
#voiceover("The middle numbers are 26 and 28.")
]
#only("6")[
#voiceover("Finally, we calculate the median by taking the average of the middle numbers.")
]
#only("7")[
#voiceover("So, the median is (26 + 28) divided by 2, which equals 27.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Arrange in Ascending Order]
#v(40pt)
#only("1-")[- Original set: (32, 30, 22, 26, 24, 28) 📊]
#v(20pt)
#only("2-")[- Ordered set: (22, 24, 26, 28, 30, 32) 🗂️]
#v(20pt)
#only("1")[
#voiceover("Let's start by arranging the numbers in ascending order. The original set is (32, 30, 22, 26, 24, 28).")
]
#only("2")[
#voiceover("When we arrange these numbers in ascending order, we get (22, 24, 26, 28, 30, 32).")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Find the Middle Numbers]
#v(40pt)
#only("1-")[- Ordered set: (22, 24, 26, 28, 30, 32) 🗂️]
#v(20pt)
#only("2-")[- Middle numbers: 26 and 28 🔍]
#v(20pt)
#only("1")[
#voiceover("Next, we need to find the middle numbers of the ordered set (22, 24, 26, 28, 30, 32).")
]
#only("2")[
#voiceover("Since there are six numbers, the middle numbers are the third and fourth numbers in the ordered set, which are 26 and 28.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Calculate the Median]
#v(40pt)
#only("1-")[- Middle numbers: 26 and 28 🔍]
#v(20pt)
#only("2-")[- Median: (26 + 28) / 2 = 27 🏆]
#v(20pt)
#only("1")[
#voiceover("Finally, we calculate the median by taking the average of the middle numbers 26 and 28.")
]
#only("2")[
#voiceover("The median is (26 + 28) divided by 2, which equals 27.")
]
]

```

This slideshow provides a step-by-step explanation of finding the median of the given set, with corresponding voiceovers for each step. The visual elements and voiceovers are synchronized using the `#only()