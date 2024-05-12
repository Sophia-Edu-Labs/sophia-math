#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mean, Median, and Mode]
#v(40pt)
#only("1-")[- Measures of central tendency 📊]
#v(20pt)
#only("2-")[- Provide information about the typical value in a dataset 🎯]
#only("1")[
#voiceover("Mean, median, and mode are measures of central tendency.")
]
#only("2")[
#voiceover("They provide information about the typical or representative value in a dataset.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mean]
#v(40pt)
#only("1-")[- Average of all values in the dataset]
#v(20pt)
#only("2-")[- Formula: $bar(x) = (sum_(i=1)^n x_i) / n$]
#v(20pt)
#only("3-")[- Example: For the dataset $\{1, 2, 3, 4, 5\}$, the mean is $bar(x) = (1 + 2 + 3 + 4 + 5) / 5 = 3$]
#only("1")[
#voiceover("The mean is the average of all values in the dataset.")
]
#only("2")[
#voiceover("It is calculated by summing up all the values and dividing by the total number of values. The formula for the mean is x bar equals the sum of x i from i equals 1 to n, divided by n.")
]
#only("3")[
#voiceover("For example, consider the dataset 1, 2, 3, 4, 5. The mean is calculated as 1 plus 2 plus 3 plus 4 plus 5, divided by 5, which equals 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Median]
#v(40pt)
#only("1-")[- Middle value when the dataset is ordered]
#v(20pt)
#only("2-")[- For an odd number of values, the median is the middle value]
#v(20pt)
#only("3-")[- For an even number of values, the median is the average of the two middle values]
#v(20pt)
#only("4-")[- Example: For the dataset $\{1, 2, 3, 4, 5\}$, the median is $3$]
#only("1")[
#voiceover("The median is the middle value when the dataset is ordered from smallest to largest.")
]
#only("2")[
#voiceover("If there is an odd number of values, the median is the middle value.")
]
#only("3")[
#voiceover("If there is an even number of values, the median is the average of the two middle values.")
]
#only("4")[
#voiceover("For the dataset 1, 2, 3, 4, 5, the median is 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mode]
#v(40pt)
#only("1-")[- Most frequently occurring value in the dataset]
#v(20pt)
#only("2-")[- There can be more than one mode if multiple values have the highest frequency]
#v(20pt)
#only("3-")[- Example: For the dataset $\{1, 2, 2, 3, 4, 4, 4, 5\}$, the mode is $4$]
#only("1")[
#voiceover("The mode is the most frequently occurring value in the dataset.")
]
#only("2")[
#voiceover("There can be more than one mode if multiple values have the highest frequency.")
]
#only("3")[
#voiceover("For example, in the dataset 1, 2, 2, 3, 4, 4, 4, 5, the mode is 4 because it appears most often.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Mean: Average of all values 📈]
#v(20pt)
#only("2-")[- Median: Middle value when ordered 🎯]
#v(20pt)
#only("3-")[- Mode: Most frequent value 📊]
#only("1")[
#voiceover("In summary, the mean is the average of all values in the dataset.")
]
#only("2")[
#voiceover("The median is the middle value when the dataset is ordered.")
]
#only("3")[
#voiceover("And the mode is the most frequently occurring value in the dataset.")
]
]