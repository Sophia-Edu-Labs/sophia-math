#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Introduction to Median]
#v(40pt)
#only("1-")[- The median is the middle number in a sorted list of numbers 📊]
#v(20pt)
#only("2-")[- If the list has an odd number of elements, the median is the middle element 🔢]
#v(20pt)
#only("3-")[- If the list has an even number of elements, the median is the average of the two middle elements ➗]
#only("1")[
#voiceover("Great job on attempting the question! Let's go over the concept of the median. The median is the middle number in a sorted list of numbers.")
]
#only("2")[
#voiceover("If the list has an odd number of elements, the median is simply the middle element.")
]
#only("3")[
#voiceover("If the list has an even number of elements, the median is the average of the two middle elements.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[- Given set: (3, 1, 4, 2, 5) 📋]
#v(20pt)
#only("2-")[- Step 1: Sort the set in ascending order: (1, 2, 3, 4, 5) 🔢]
#v(20pt)
#only("3-")[- Step 2: Identify the middle element in the sorted set 🧐]
#v(20pt)
#only("4-")[- The middle element is 3, so the median is 3 🎯]
#only("1")[
#voiceover("Let's solve the exercise step-by-step. The given set of numbers is 3, 1, 4, 2, and 5.")
]
#only("2")[
#voiceover("Step 1: Sort the set in ascending order. The sorted set is 1, 2, 3, 4, and 5.")
]
#only("3")[
#voiceover("Step 2: Identify the middle element in the sorted set. Since there are five elements, the middle element is the third one.")
]
#only("4")[
#voiceover("The middle element is 3, so the median of the set is 3.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- The median is the middle number in a sorted list 📊]
#v(20pt)
#only("2-")[- For the set (3, 1, 4, 2, 5), the median is 3 🎯]
#only("1")[
#voiceover("To recap, the median is the middle number in a sorted list.")
]
#only("2")[
#voiceover("For the given set 3, 1, 4, 2, and 5, the median is 3.")
]
]