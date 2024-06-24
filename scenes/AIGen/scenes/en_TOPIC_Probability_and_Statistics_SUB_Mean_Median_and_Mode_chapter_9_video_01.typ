#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding the Mode in Larger Sets]
#v(40pt)
#only("1-")[- Mode: Most frequent value(s) in a dataset 📊]
#v(20pt)
#only("2-")[- Larger sets may have multiple modes]
#v(20pt)
#only("3-")[- Example: Dataset with multiple modes]
#only("1")[
#voiceover("In this video, we will learn how to find the mode in larger datasets, and how to handle sets with multiple modes. Let's start by understanding what the mode is.")
]
#only("2")[
#voiceover("The mode is the value or values that appear most frequently in a dataset. In larger sets, it's possible to have more than one mode.")
]
#only("3")[
#voiceover("Let's look at an example dataset to see how we can identify multiple modes.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example Dataset]
#v(40pt)
#only("1-")[- Dataset: $[1, 2, 2, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6]$]
#v(20pt)
#only("2-")[- Frequency of each value]
#v(20pt)
#only("3-")[- Modes: $4, 5, 6$]
#only("1")[
#voiceover("Consider the dataset: 1, 2, 2, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6. We need to find the mode.")
]
#only("2")[
#voiceover("First, we count the frequency of each value in the dataset.")
]
#only("3")[
#voiceover("The values 4, 5, and 6 each appear three times, which is more frequently than any other value. Therefore, the modes of this dataset are 4, 5, and 6.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Mode: Most frequent value(s) 📊]
#v(20pt)
#only("2-")[- Larger sets may have multiple modes]
#v(20pt)
#only("3-")[- Example: Modes in dataset $[4, 5, 6]$]
#only("1")[
#voiceover("To recap, the mode is the most frequent value or values in a dataset.")
]
#only("2")[
#voiceover("In larger datasets, it's possible to have multiple modes.")
]
#only("3")[
#voiceover("For example, in the dataset we looked at, the modes were 4, 5, and 6.")
]
]