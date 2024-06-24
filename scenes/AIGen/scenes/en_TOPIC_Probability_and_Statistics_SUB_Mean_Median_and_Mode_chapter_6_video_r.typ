#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Mean, Median, and Mode 📊]
#v(40pt)
#only("1-")[- These are measures of central tendency. 📐]
#only("2-")[- Mean: the average value. ➗]
#only("3-")[- Median: the middle value. 📏]
#only("4-")[- Mode: the most frequent value. 🔄]
#only("1")[
#voiceover("Let's review the measures of central tendency: mean, median, and mode.")
]
#only("2")[
#voiceover("The mean is the average value of a set of numbers.")
]
#only("3")[
#voiceover("The median is the middle value when the numbers are arranged in order.")
]
#only("4")[
#voiceover("The mode is the most frequent value in the set of numbers.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculating Mean, Median, and Mode]
#v(40pt)
#only("1-")[- Example dataset: $[3, 7, 7, 2, 9, 7, 5]$]
#only("2-")[- Mean: $(3 + 7 + 7 + 2 + 9 + 7 + 5) / 7 = 5.71$]
#only("3-")[- Median: Arrange in order: $[2, 3, 5, 7, 7, 7, 9]$ ➡ Middle value: $7$]
#only("4-")[- Mode: Most frequent value: $7$]
#only("1")[
#voiceover("Let's consider an example dataset: 3, 7, 7, 2, 9, 7, 5.")
]
#only("2")[
#voiceover("To calculate the mean, we sum all the numbers and divide by the total count. So, 3 plus 7 plus 7 plus 2 plus 9 plus 7 plus 5, divided by 7, equals approximately 5.71.")
]
#only("3")[
#voiceover("To find the median, we arrange the numbers in ascending order: 2, 3, 5, 7, 7, 7, 9. The middle value is 7.")
]
#only("4")[
#voiceover("The mode is the number that appears most frequently, which in this case is 7.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Mean: Average value. ➗]
#only("2-")[- Median: Middle value. 📏]
#only("3-")[- Mode: Most frequent value. 🔄]
#only("4-")[- Important for understanding data. 📊]
#only("1")[
#voiceover("To summarize, the mean is the average value of a dataset.")
]
#only("2")[
#voiceover("The median is the middle value when the data is arranged in order.")
]
#only("3")[
#voiceover("The mode is the most frequent value in the dataset.")
]
#only("4")[
#voiceover("Understanding these measures is crucial for analyzing and interpreting data effectively.")
]
]
