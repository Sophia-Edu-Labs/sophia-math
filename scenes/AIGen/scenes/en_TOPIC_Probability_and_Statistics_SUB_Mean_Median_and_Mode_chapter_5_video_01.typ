#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding the Mode in Complex Sets]
#v(40pt)
#only("1-")[- Mode: The most frequent value(s) in a dataset 📊]
#v(20pt)
#only("2-")[- Larger datasets: More values to consider 📈]
#v(20pt)
#only("3-")[- Multiple modes: More than one frequent value 🔢]
#v(20pt)
#only("4-")[- Example: Dataset with multiple modes]
#only("1")[
#voiceover("Let's start by understanding what the mode is. The mode is the most frequent value or values in a dataset.")
]
#only("2")[
#voiceover("In larger datasets, we have more values to consider, which can make finding the mode more complex.")
]
#only("3")[
#voiceover("Sometimes, datasets can have multiple modes, meaning there is more than one value that appears most frequently.")
]
#only("4")[
#voiceover("Let's look at an example of a dataset with multiple modes.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example Dataset]
#v(40pt)
#only("1-")[- Dataset: $[1, 2, 2, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6]$]
#v(20pt)
#only("2-")[- Frequencies: $1: 1, 2: 2, 3: 2, 4: 3, 5: 3, 6: 3$]
#v(20pt)
#only("3-")[- Modes: $4, 5, 6$]
#only("1")[
#voiceover("Consider the dataset: 1, 2, 2, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6.")
]
#only("2")[
#voiceover("The frequencies of the values are: 1 appears once, 2 appears twice, 3 appears twice, 4 appears three times, 5 appears three times, and 6 appears three times.")
]
#only("3")[
#voiceover("Since 4, 5, and 6 all appear three times, they are all modes of this dataset.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Steps to Find the Mode]
#v(40pt)
#only("1-")[- Step 1: Count the frequency of each value 🔢]
#v(20pt)
#only("2-")[- Step 2: Identify the highest frequency 📈]
#v(20pt)
#only("3-")[- Step 3: Find all values with the highest frequency 🔍]
#only("1")[
#voiceover("To find the mode in a dataset, follow these steps: First, count the frequency of each value.")
]
#only("2")[
#voiceover("Next, identify the highest frequency.")
]
#only("3")[
#voiceover("Finally, find all values that have this highest frequency. These values are the modes of the dataset.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Mode: Most frequent value(s) 📊]
#v(20pt)
#only("2-")[- Larger datasets: More values to consider 📈]
#v(20pt)
#only("3-")[- Multiple modes: More than one frequent value 🔢]
#v(20pt)
#only("4-")[- Steps: Count frequencies, identify highest frequency, find all values with highest frequency]
#only("1")[
#voiceover("In summary, the mode is the most frequent value or values in a dataset.")
]
#only("2")[
#voiceover("In larger datasets, there are more values to consider, which can make finding the mode more complex.")
]
#only("3")[
#voiceover("Sometimes, datasets can have multiple modes, meaning there is more than one value that appears most frequently.")
]
#only("4")[
#voiceover("To find the mode, count the frequency of each value, identify the highest frequency, and find all values with this highest frequency.")
]
]