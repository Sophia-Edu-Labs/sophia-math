#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Median Calculation]
#v(40pt)
#only("1-")[- Given set: $ (1, 9, 3, 11, 13, 5, 7) $ 📊]
#v(20pt)
#only("2-")[- Step 1: Sort the set in ascending order 📈]
#v(20pt)
#only("3-")[- Sorted set: $ (1, 3, 5, 7, 9, 11, 13) $ 🔢]
#v(20pt)
#only("4-")[- Step 2: Find the middle element 🏅]
#v(20pt)
#only("5-")[- Median: $ 7 $ 🎯]
#only("1")[
#voiceover("Great job on answering the question! Let's go through the solution step-by-step. We start with the given set of numbers: 1, 9, 3, 11, 13, 5, and 7.")
]
#only("2")[
#voiceover("First, we need to sort the set in ascending order.")
]
#only("3")[
#voiceover("After sorting, the set becomes: 1, 3, 5, 7, 9, 11, and 13.")
]
#only("4")[
#voiceover("Next, we find the middle element of the sorted set.")
]
#only("5")[
#voiceover("The middle element, and thus the median, is 7.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Sorting the Set]
#v(40pt)
#only("1-")[- Original set: $ (1, 9, 3, 11, 13, 5, 7) $ 📊]
#v(20pt)
#only("2-")[- Sorting steps: 🛠️]
#v(20pt)
#only("3-")[- Compare 1 and 9: $1 < 9$ ✅]
#v(20pt)
#only("4-")[- Compare 9 and 3: $9 > 3$ 🔄]
#v(20pt)
#only("5-")[- Swap 9 and 3: $ (1, 3, 9, 11, 13, 5, 7) $ 🔄]
#v(20pt)
#only("6-")[- Continue sorting... 🔄]
#v(20pt)
#only("7-")[- Final sorted set: $ (1, 3, 5, 7, 9, 11, 13) $ 🎯]
#only("1")[
#voiceover("Let's take a closer look at how we sort the set. We start with the original set: 1, 9, 3, 11, 13, 5, and 7.")
]
#only("2")[
#voiceover("We need to compare each pair of numbers and arrange them in ascending order.")
]
#only("3")[
#voiceover("First, we compare 1 and 9. Since 1 is less than 9, we keep them in place.")
]
#only("4")[
#voiceover("Next, we compare 9 and 3. Since 9 is greater than 3, we need to swap them.")
]
#only("5")[
#voiceover("After swapping, the set becomes: 1, 3, 9, 11, 13, 5, and 7.")
]
#only("6")[
#voiceover("We continue this process until the entire set is sorted.")
]
#only("7")[
#voiceover("Finally, we get the sorted set: 1, 3, 5, 7, 9, 11, and 13.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding the Median]
#v(40pt)
#only("1-")[- Sorted set: $ (1, 3, 5, 7, 9, 11, 13) $ 🔢]
#v(20pt)
#only("2-")[- Middle element: $ 7 $ 🎯]
#only("1")[
#voiceover("Now that we have the sorted set: 1, 3, 5, 7, 9, 11, and 13, we need to find the median.")
]
#only("2")[
#voiceover("Since there are 7 elements, the middle element is the 4th one, which is 7. Therefore, the median is 7.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- Median of the set: $ 7 $ 🎯]
#v(20pt)
#only("1")[
#voiceover("In conclusion, the median of the set 1, 9, 3, 11, 13, 5, and 7 is 7. Great job on solving this problem!")
]
]