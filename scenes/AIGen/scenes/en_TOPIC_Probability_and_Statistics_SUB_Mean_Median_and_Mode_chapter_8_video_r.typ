#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Median Calculation 📊]
#v(40pt)
#only("1-")[- The median is the middle number in a sorted set. 🔢]
#only("2-")[- If the set has an even number of elements, the median is the average of the two middle numbers. ➗]
#only("1")[
#voiceover("Let's review the concept of the median. The median is the middle number in a sorted set of numbers.")
]
#only("2")[
#voiceover("If the set has an even number of elements, the median is calculated as the average of the two middle numbers.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Review]
#v(40pt)
#only("1-")[- Sort the set of numbers in ascending order. 📈]
#only("2-")[- Identify the middle number if the set has an odd number of elements. 🔢]
#only("3-")[- For an even number of elements, find the average of the two middle numbers. ➗]
#only("1")[
#voiceover("First, sort the set of numbers in ascending order.")
]
#only("2")[
#voiceover("Next, identify the middle number if the set has an odd number of elements.")
]
#only("3")[
#voiceover("For a set with an even number of elements, find the average of the two middle numbers.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example Calculation]
#v(40pt)
#only("1-")[- Consider the set: $ {3, 1, 4, 2, 5} $]
#only("2-")[- Sorted set: $ {1, 2, 3, 4, 5} $]
#only("3-")[- Median: $ 3 $]
#only("1")[
#voiceover("Let's consider the set of numbers: 3, 1, 4, 2, 5.")
]
#only("2")[
#voiceover("First, we sort the set in ascending order: 1, 2, 3, 4, 5.")
]
#only("3")[
#voiceover("Since the set has an odd number of elements, the median is the middle number, which is 3.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example with Even Number of Elements]
#v(40pt)
#only("1-")[- Consider the set: $ {6, 2, 9, 4} $]
#only("2-")[- Sorted set: $ {2, 4, 6, 9} $]
#only("3-")[- Middle numbers: $ 4 $ and $ 6 $]
#only("4-")[- Median: $ (4 + 6)/2 = 5 $]
#only("1")[
#voiceover("Now, let's consider a set with an even number of elements: 6, 2, 9, 4.")
]
#only("2")[
#voiceover("First, we sort the set in ascending order: 2, 4, 6, 9.")
]
#only("3")[
#voiceover("The middle numbers are 4 and 6.")
]
#only("4")[
#voiceover("The median is the average of these two numbers, which is (4 + 6) divided by 2, resulting in 5.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Median: middle number in a sorted set. 🔢]
#only("2-")[- Even set: average of two middle numbers. ➗]
#only("3-")[- Steps: Sort, identify middle, calculate average if needed. 📈]
#only("1")[
#voiceover("To summarize, the median is the middle number in a sorted set.")
]
#only("2")[
#voiceover("For a set with an even number of elements, the median is the average of the two middle numbers.")
]
#only("3")[
#voiceover("The steps to find the median are: sort the set, identify the middle number, and calculate the average if needed.")
]
]