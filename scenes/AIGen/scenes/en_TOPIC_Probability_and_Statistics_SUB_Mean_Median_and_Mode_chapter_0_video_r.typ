#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Mean Calculation 🧮]
#v(40pt)
#only("1-")[- The mean helps us find the average value in a dataset. 📊]
#only("2-")[- It is useful in various fields like statistics, economics, and everyday life. 🌍]
#only("3-")[- Let's review how to calculate the mean step by step. 🚶‍♂️]
#only("1")[
#voiceover("Let's review the concept of the mean, which helps us find the average value in a dataset.")
]
#only("2")[
#voiceover("The mean is useful in various fields like statistics, economics, and even in everyday life.")
]
#only("3")[
#voiceover("Now, let's review how to calculate the mean step by step.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Calculation]
#v(40pt)
#only("1-")[- Step 1: Add all the numbers in the dataset. ➕]
#only("2-")[- Step 2: Count the number of values in the dataset. 🔢]
#only("3-")[- Step 3: Divide the sum by the count. ➗]
#only("1")[
#voiceover("First, we add all the numbers in the dataset.")
]
#only("2")[
#voiceover("Next, we count the number of values in the dataset.")
]
#only("3")[
#voiceover("Finally, we divide the sum by the count to find the mean.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example Calculation]
#v(40pt)
#only("1-")[- Dataset: $3, 5, 7, 9, 11$]
#only("2-")[- Sum: $3 + 5 + 7 + 9 + 11 = 35$]
#only("3-")[- Count: $5$]
#only("4-")[- Mean: $35 / 5 = 7$]
#only("1")[
#voiceover("Let's look at an example. Consider the dataset: 3, 5, 7, 9, and 11.")
]
#only("2")[
#voiceover("First, we add all the numbers: 3 plus 5 plus 7 plus 9 plus 11, which equals 35.")
]
#only("3")[
#voiceover("Next, we count the number of values in the dataset, which is 5.")
]
#only("4")[
#voiceover("Finally, we divide the sum, 35, by the count, 5, to get the mean, which is 7.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- The mean is the average of a set of numbers. 📊]
#only("2-")[- Add all the numbers and divide by the count. ➕➗]
#only("3-")[- Example: Dataset $3, 5, 7, 9, 11$ arrow Mean $= 7$]
#only("1")[
#voiceover("To summarize, the mean is the average of a set of numbers.")
]
#only("2")[
#voiceover("We find it by adding all the numbers and then dividing by the count.")
]
#only("3")[
#voiceover("For example, in the dataset 3, 5, 7, 9, and 11, the mean is 7.")
]
]