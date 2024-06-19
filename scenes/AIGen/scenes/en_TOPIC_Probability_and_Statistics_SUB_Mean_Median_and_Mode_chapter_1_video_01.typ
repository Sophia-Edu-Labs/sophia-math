#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Have you ever wondered how to find the middle value in a set of numbers? Let's explore the concept of the median together!")]
#text(size: 30pt, weight: "bold")[Introduction to Median]
#v(40pt)
#only("2-")[- The median is the middle number in a sorted set of numbers]
#v(20pt)
#only("3-")[- If the set has an even number of elements, the median is the average of the two middle numbers]
#only("2")[
#voiceover("The median is the middle number in a sorted set of numbers. This means that if you arrange the numbers in ascending order, the median is the number that falls right in the center.")]
#only("3")[
#voiceover("However, if the set has an even number of elements, there isn't a single middle number. In this case, the median is the average of the two middle numbers.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding the Median]
#v(40pt)
#only("1-")[- Example: Find the median of the set {3, 1, 4, 1, 5, 9}]
#v(20pt)
#only("2-")[- Step 1: Sort the set: {1, 1, 3, 4, 5, 9}]
#v(20pt)
#only("3-")[- Step 2: Identify the middle number(s)]
#v(20pt)
#only("4-")[- Step 3: Calculate the median]
#only("1")[
#voiceover("Let's find the median of the set of numbers {3, 1, 4, 1, 5, 9}.")]
#only("2")[
#voiceover("First, we need to sort the set in ascending order. So, the sorted set is {1, 1, 3, 4, 5, 9}.")]
#only("3")[
#voiceover("Next, we identify the middle number or numbers. Since there are six numbers in the set, we have two middle numbers: 3 and 4.")]
#only("4")[
#voiceover("Finally, we calculate the median by taking the average of these two middle numbers. So, the median is (3 + 4) / 2, which equals 3.5.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- The median is the middle number in a sorted set of numbers]
#v(20pt)
#only("2-")[- If the set has an even number of elements, the median is the average of the two middle numbers]
#v(20pt)
#only("3-")[- Example: For the set {3, 1, 4, 1, 5, 9}, the median is 3.5]
#only("1")[
#voiceover("To summarize, the median is the middle number in a sorted set of numbers.")]
#only("2")[
#voiceover("If the set has an even number of elements, the median is the average of the two middle numbers.")]
#only("3")[
#voiceover("For example, for the set {3, 1, 4, 1, 5, 9}, the median is 3.5.")]
]