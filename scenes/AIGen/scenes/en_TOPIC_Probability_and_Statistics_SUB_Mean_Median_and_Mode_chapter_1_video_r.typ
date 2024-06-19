#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Median 📊]
#v(40pt)
#only("1-")[- The median helps us find the middle value in a dataset. 📈]
#only("2-")[- Useful for understanding the central tendency of data. 🧩]
#only("3-")[- Let's review how to find the median. 🔍]
#only("1")[
#voiceover("Let's review the concept of the median. The median helps us find the middle value in a dataset.")
]
#only("2")[
#voiceover("It's useful for understanding the central tendency of data.")
]
#only("3")[
#voiceover("Let's review how to find the median.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding the Median]
#v(40pt)
#only("1-")[- Sort the dataset in ascending order. 📋]
#only("2-")[- If the dataset has an odd number of elements, the median is the middle element. 🏅]
#only("3-")[- If the dataset has an even number of elements, the median is the average of the two middle elements. 🏅+🏅]
#only("1")[
#voiceover("First, sort the dataset in ascending order.")
]
#only("2")[
#voiceover("If the dataset has an odd number of elements, the median is the middle element.")
]
#only("3")[
#voiceover("If the dataset has an even number of elements, the median is the average of the two middle elements.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[- Dataset: $[3, 1, 4, 1, 5, 9, 2]$]
#only("2-")[- Sorted: $[1, 1, 2, 3, 4, 5, 9]$]
#only("3-")[- Median: $3$]
#only("1")[
#voiceover("Consider the dataset: 3, 1, 4, 1, 5, 9, 2.")
]
#only("2")[
#voiceover("First, we sort it in ascending order: 1, 1, 2, 3, 4, 5, 9.")
]
#only("3")[
#voiceover("Since the dataset has an odd number of elements, the median is the middle element, which is 3.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example (Even Number of Elements)]
#v(40pt)
#only("1-")[- Dataset: $[3, 1, 4, 1, 5, 9]$]
#only("2-")[- Sorted: $[1, 1, 3, 4, 5, 9]$]
#only("3-")[- Median: $(3+4)/2 = 3.5$]
#only("1")[
#voiceover("Now consider the dataset: 3, 1, 4, 1, 5, 9.")
]
#only("2")[
#voiceover("First, we sort it in ascending order: 1, 1, 3, 4, 5, 9.")
]
#only("3")[
#voiceover("Since the dataset has an even number of elements, the median is the average of the two middle elements, which is (3+4)/2, equaling 3.5.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Median: middle value in a sorted dataset. 📋]
#only("2-")[- Odd number of elements: middle element is the median. 🏅]
#only("3-")[- Even number of elements: average of two middle elements is the median. 🏅+🏅]
#only("1")[
#voiceover("To summarize, the median is the middle value in a sorted dataset.")
]
#only("2")[
#voiceover("If the dataset has an odd number of elements, the median is the middle element.")
]
#only("3")[
#voiceover("If the dataset has an even number of elements, the median is the average of the two middle elements.")
]
]