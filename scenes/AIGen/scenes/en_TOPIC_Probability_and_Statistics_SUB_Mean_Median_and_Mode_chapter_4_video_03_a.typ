#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Median with Complex Numbers]
#v(40pt)
#only("1-")[- Given set: $(10, 6, 4, 8, 12, 2)$ 📊]
#v(20pt)
#only("2-")[- Step 1: Arrange the numbers in ascending order 🔢]
#v(20pt)
#only("3-")[- Step 2: Find the middle numbers in the ordered set 🎯]
#v(20pt)
#only("4-")[- Step 3: Calculate the median by averaging the middle numbers ➗]
#v(20pt)
#only("5-")[- Median: $7$ 🏅]

#only("1")[
#voiceover("Great job on answering the question! Let's go through the solution step-by-step. First, we are given the set of numbers: 10, 6, 4, 8, 12, and 2.")
]
#only("2")[
#voiceover("Step 1: We need to arrange these numbers in ascending order. So, we get 2, 4, 6, 8, 10, and 12.")
]
#only("3")[
#voiceover("Step 2: Since there are six numbers, we find the two middle numbers in the ordered set, which are 6 and 8.")
]
#only("4")[
#voiceover("Step 3: To find the median, we take the average of these two middle numbers. So, we calculate 6 plus 8, divided by 2.")
]
#only("5")[
#voiceover("Therefore, the median of the set is 7.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Arrange in Ascending Order]
#v(40pt)
#only("1-")[- Original set: $(10, 6, 4, 8, 12, 2)$]
#v(20pt)
#only("2-")[- Ordered set: $(2, 4, 6, 8, 10, 12)$]

#only("1")[
#voiceover("Let's start with Step 1. We need to arrange the numbers in ascending order. The original set is 10, 6, 4, 8, 12, and 2.")
]
#only("2")[
#voiceover("When we arrange these numbers in ascending order, we get 2, 4, 6, 8, 10, and 12.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Find the Middle Numbers]
#v(40pt)
#only("1-")[- Ordered set: $(2, 4, 6, 8, 10, 12)$]
#v(20pt)
#only("2-")[- Middle numbers: $6$ and $8$]

#only("1")[
#voiceover("Now, let's move to Step 2. We need to find the middle numbers in the ordered set.")
]
#only("2")[
#voiceover("Since there are six numbers, the two middle numbers are 6 and 8.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Calculate the Median]
#v(40pt)
#only("1-")[- Middle numbers: $6$ and $8$]
#v(20pt)
#only("2-")[- Median: $(6 + 8) / 2$]
#v(20pt)
#only("3-")[- Median: $7$]

#only("1")[
#voiceover("Finally, in Step 3, we calculate the median by averaging the two middle numbers.")
]
#only("2")[
#voiceover("So, we add 6 and 8, and then divide by 2.")
]
#only("3")[
#voiceover("This gives us a median of 7.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- Median of the set $(10, 6, 4, 8, 12, 2)$ is $7$]

#only("1")[
#voiceover("In conclusion, the median of the set 10, 6, 4, 8, 12, and 2 is 7. Great job on solving this problem!")
]
]