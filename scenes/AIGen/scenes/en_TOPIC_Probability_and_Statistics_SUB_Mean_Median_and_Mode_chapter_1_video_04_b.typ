#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding the Median]
#v(40pt)
#only("1-")[- Given set: {7, 3, 9, 1, 5, 2} 📊]
#only("1")[
#voiceover("That's okay, let's review the correct solution step-by-step. We start with the given set of numbers: 7, 3, 9, 1, 5, and 2.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Sort the Set]
#v(40pt)
#only("1-")[- Sorted set: {1, 2, 3, 5, 7, 9} 📈]
#only("1")[
#voiceover("First, we need to sort the set in ascending order. The sorted set is: 1, 2, 3, 5, 7, and 9.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Find the Median]
#v(40pt)
#only("1-")[- Even number of elements: 6 🔢]
#only("2-")[- Median: average of middle two elements]
#only("3-")[- Middle elements: 3 and 5]
#only("4-")[- Median: (3 + 5) / 2 = 4]
#only("1")[
#voiceover("Since there are six elements in the set, which is an even number, the median is the average of the middle two elements.")
]
#only("2")[
#voiceover("The middle two elements in the sorted set are 3 and 5.")
]
#only("3")[
#voiceover("To find the median, we calculate the average of these two elements: (3 + 5) divided by 2.")
]
#only("4")[
#voiceover("So, the median of the set is 4.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Given set: {7, 3, 9, 1, 5, 2} 📊]
#only("2-")[- Sorted set: {1, 2, 3, 5, 7, 9} 📈]
#only("3-")[- Median: 4]
#only("1")[
#voiceover("To summarize, we started with the given set of numbers: 7, 3, 9, 1, 5, and 2.")
]
#only("2")[
#voiceover("We sorted the set in ascending order to get: 1, 2, 3, 5, 7, and 9.")
]
#only("3")[
#voiceover("Since there are six elements, the median is the average of the middle two elements, which are 3 and 5. Therefore, the median of the set is 4.")
]
]