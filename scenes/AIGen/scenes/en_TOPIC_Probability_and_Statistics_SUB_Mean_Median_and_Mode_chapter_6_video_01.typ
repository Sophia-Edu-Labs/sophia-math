#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Introduction to Mean, Median, and Mode]
#v(40pt)
#only("1-")[- Imagine you have a set of test scores 📊]
#v(20pt)
#only("2-")[- How can we summarize this data? 🤔]
#v(20pt)
#only("3-")[- We use mean, median, and mode! 📈]
#only("1")[
#voiceover("Imagine you have a set of test scores. How can we summarize this data? We use mean, median, and mode!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Mean]
#v(40pt)
#only("1-")[- Mean: Average of all numbers ➗]
#v(20pt)
#only("2-")[- Formula: $"mean" = ("sum of all values")/("number of values")$]
#v(20pt)
#only("3-")[- Example: Scores = [85, 90, 78, 92, 88]]
#v(20pt)
#only("4-")[- $"mean" = (85 + 90 + 78 + 92 + 88)/5 = 86.6$]
#only("1")[
#voiceover("The mean is the average of all numbers. The formula for the mean is the sum of all values divided by the number of values.")
]
#only("2")[
#voiceover("For example, if we have the scores 85, 90, 78, 92, and 88, we can calculate the mean.")
]
#only("3")[
#voiceover("We add all the scores together and then divide by the number of scores. So, the mean is 86.6.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Median]
#v(40pt)
#only("1-")[- Median: Middle value when sorted 🔢]
#v(20pt)
#only("2-")[- Sort the values: [78, 85, 88, 90, 92]]
#v(20pt)
#only("3-")[- Example: Median = 88]
#only("1")[
#voiceover("The median is the middle value when the numbers are sorted.")
]
#only("2")[
#voiceover("For example, if we sort the scores 78, 85, 88, 90, and 92, the median is the middle value, which is 88.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Mode]
#v(40pt)
#only("1-")[- Mode: Most frequent value 🔄]
#v(20pt)
#only("2-")[- Example: Scores = [85, 90, 85, 92, 88]]
#v(20pt)
#only("3-")[- Mode = 85]
#only("1")[
#voiceover("The mode is the most frequent value in a set of numbers.")
]
#only("2")[
#voiceover("For example, if we have the scores 85, 90, 85, 92, and 88, the mode is 85 because it appears most frequently.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Mean: Average ➗]
#v(20pt)
#only("2-")[- Median: Middle value 🔢]
#v(20pt)
#only("3-")[- Mode: Most frequent 🔄]
#only("1")[
#voiceover("In summary, the mean is the average of all numbers, the median is the middle value when sorted, and the mode is the most frequent value.")
]
]