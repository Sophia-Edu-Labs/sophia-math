#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Median with Complex Numbers]
#v(40pt)
#only("1-")[- The median is a measure of central tendency. 📊]
#only("2-")[- Useful in understanding data distributions. 📈]
#only("3-")[- Let's review how to find the median. 🧮]
#only("1")[
#voiceover("Let's review the concept of the median. The median is a measure of central tendency, which helps us understand the center of a data set.")
]
#only("2")[
#voiceover("It is particularly useful in understanding data distributions, especially when the data set contains outliers.")
]
#only("3")[
#voiceover("Let's review how to find the median.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding the Median]
#v(40pt)
#only("1-")[- Sort the data set in ascending order. 📋]
#only("2-")[- If the number of elements is odd, the median is the middle element. 🔢]
#only("3-")[- If the number of elements is even, the median is the average of the two middle elements. ➗]
#only("1")[
#voiceover("To find the median, we first sort the data set in ascending order.")
]
#only("2")[
#voiceover("If the number of elements in the data set is odd, the median is the middle element.")
]
#only("3")[
#voiceover("If the number of elements is even, the median is the average of the two middle elements.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[- Data set: $3, 1, 4, 1, 5, 9, 2$]
#only("2-")[- Sorted data set: $1, 1, 2, 3, 4, 5, 9$]
#only("3-")[- Median: $3$]
#only("1")[
#voiceover("Consider the data set: 3, 1, 4, 1, 5, 9, 2.")
]
#only("2")[
#voiceover("First, we sort the data set in ascending order: 1, 1, 2, 3, 4, 5, 9.")
]
#only("3")[
#voiceover("Since the number of elements is odd, the median is the middle element, which is 3.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example with Even Number of Elements]
#v(40pt)
#only("1-")[- Data set: $3, 1, 4, 1, 5, 9$]
#only("2-")[- Sorted data set: $1, 1, 3, 4, 5, 9$]
#only("3-")[- Median: $(3 + 4) / 2 = 3.5$]
#only("1")[
#voiceover("Now consider a data set with an even number of elements: 3, 1, 4, 1, 5, 9.")
]
#only("2")[
#voiceover("First, we sort the data set in ascending order: 1, 1, 3, 4, 5, 9.")
]
#only("3")[
#voiceover("Since the number of elements is even, the median is the average of the two middle elements: (3 + 4) divided by 2, which equals 3.5.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- The median is the middle number in a sorted set. 📊]
#only("2-")[- For odd number of elements, it's the middle element. 🔢]
#only("3-")[- For even number of elements, it's the average of the two middle elements. ➗]
#only("4-")[- Useful for understanding data distributions. 📈]
#only("1")[
#voiceover("To summarize, the median is the middle number in a sorted set.")
]
#only("2")[
#voiceover("For an odd number of elements, the median is the middle element.")
]
#only("3")[
#voiceover("For an even number of elements, the median is the average of the two middle elements.")
]
#only("4")[
#voiceover("Understanding the median is useful for interpreting data distributions, especially when dealing with outliers.")
]
]