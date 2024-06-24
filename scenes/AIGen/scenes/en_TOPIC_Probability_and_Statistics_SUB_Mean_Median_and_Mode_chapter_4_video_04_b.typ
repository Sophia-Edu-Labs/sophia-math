#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Median with Complex Numbers]
#v(40pt)
#only("1-")[- Given set: (9, 17, 5, 13, 7, 11, 3, 15)]
#v(20pt)
#only("2-")[- Step 1: Sort the numbers in ascending order 📈]
#v(20pt)
#only("3-")[- Sorted set: (3, 5, 7, 9, 11, 13, 15, 17)]
#v(20pt)
#only("4-")[- Step 2: Find the middle numbers (since the set has an even number of elements) 🔍]
#v(20pt)
#only("5-")[- Middle numbers: 9 and 11]
#v(20pt)
#only("6-")[- Step 3: Calculate the median as the average of the middle numbers 🧮]
#v(20pt)
#only("7-")[- Median: (9 + 11) / 2 = 10]
#only("1")[#voiceover("Not quite, but don't worry! Let's go through the correct solution step-by-step. First, we are given the set of numbers: 9, 17, 5, 13, 7, 11, 3, and 15.")]
#only("2")[#voiceover("The first step is to sort these numbers in ascending order.")]
#only("3")[#voiceover("After sorting, the set becomes: 3, 5, 7, 9, 11, 13, 15, and 17.")]
#only("4")[#voiceover("Next, we need to find the middle numbers. Since the set has an even number of elements, we take the two middle numbers.")]
#only("5")[#voiceover("The middle numbers are 9 and 11.")]
#only("6")[#voiceover("Finally, we calculate the median by taking the average of these two middle numbers.")]
#only("7")[#voiceover("So, the median is (9 + 11) divided by 2, which equals 10.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Sorting the Set]
#v(40pt)
#only("1-")[- Original set: (9, 17, 5, 13, 7, 11, 3, 15)]
#v(20pt)
#only("2-")[- Sorted set: (3, 5, 7, 9, 11, 13, 15, 17)]
#only("1")[#voiceover("Let's start by sorting the given set of numbers. The original set is 9, 17, 5, 13, 7, 11, 3, and 15.")]
#only("2")[#voiceover("After sorting these numbers in ascending order, we get: 3, 5, 7, 9, 11, 13, 15, and 17.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding the Median]
#v(40pt)
#only("1-")[- Sorted set: (3, 5, 7, 9, 11, 13, 15, 17)]
#v(20pt)
#only("2-")[- Middle numbers: 9 and 11]
#v(20pt)
#only("3-")[- Median: (9 + 11) / 2 = 10]
#only("1")[#voiceover("Now, let's find the median. Since the set has an even number of elements, we need to take the two middle numbers.")]
#only("2")[#voiceover("The middle numbers in the sorted set are 9 and 11.")]
#only("3")[#voiceover("To find the median, we take the average of these two numbers. So, the median is (9 + 11) divided by 2, which equals 10.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- The median of the set (9, 17, 5, 13, 7, 11, 3, 15) is 10 🎉]
#only("1")[#voiceover("In conclusion, the median of the set 9, 17, 5, 13, 7, 11, 3, and 15 is 10. Great job on solving the problem!")]
]