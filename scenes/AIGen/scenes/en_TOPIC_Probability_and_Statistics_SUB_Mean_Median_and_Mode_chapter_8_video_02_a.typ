#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Median Calculation]
#v(40pt)
#only("1-")[- Given set: {11, 21, 13, 17, 19, 15, 23}]
#v(20pt)
#only("2-")[- Step 1: Arrange in ascending order]
#v(20pt)
#only("3-")[- Ordered set: {11, 13, 15, 17, 19, 21, 23}]
#v(20pt)
#only("4-")[- Step 2: Find the middle number]
#v(20pt)
#only("5-")[- Median: 17]
#only("1")[
#voiceover("Great job on answering the question correctly! Let's go through the solution step-by-step. We start with the given set of numbers: 11, 21, 13, 17, 19, 15, and 23.")
]
#only("2")[
#voiceover("First, we need to arrange these numbers in ascending order.")
]
#only("3")[
#voiceover("When we arrange the numbers in ascending order, we get: 11, 13, 15, 17, 19, 21, and 23.")
]
#only("4")[
#voiceover("Next, we need to find the middle number in this ordered set.")
]
#only("5")[
#voiceover("Since there are 7 numbers, the middle number is the fourth one, which is 17. Therefore, the median of the set is 17.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Explanation]
#v(40pt)
#only("1-")[- Given set: {11, 21, 13, 17, 19, 15, 23}]
#v(20pt)
#only("2-")[- Ordered set: {11, 13, 15, 17, 19, 21, 23}]
#v(20pt)
#only("3-")[- Middle number: 17]
#v(20pt)
#only("4-")[- Median: 17]
#only("1")[
#voiceover("Let's break it down further. We start with the given set of numbers: 11, 21, 13, 17, 19, 15, and 23.")
]
#only("2")[
#voiceover("We then arrange these numbers in ascending order: 11, 13, 15, 17, 19, 21, and 23.")
]
#only("3")[
#voiceover("To find the median, we look for the middle number in this ordered set. Since there are 7 numbers, the middle number is the fourth one, which is 17.")
]
#only("4")[
#voiceover("Therefore, the median of the set is 17.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt

# Given set of numbers
numbers = [11, 21, 13, 17, 19, 15, 23]
ordered_numbers = sorted(numbers)

# Plotting the numbers
plt.figure(figsize=(10, 2))
plt.plot(ordered_numbers, 'bo-', markersize=10)
plt.axhline(y=17, color='r', linestyle='--', label='Median = 17')
plt.xticks(range(len(ordered_numbers)), ordered_numbers)
plt.xlabel('Index')
plt.ylabel('Value')
plt.title('Ordered Set with Median Highlighted')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]
#v(20pt)
#only("1")[
#voiceover("Here is a visual representation of the ordered set. The numbers are plotted on the x-axis, and the value of each number is shown on the y-axis. The median, 17, is highlighted with a red dashed line.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Given set: {11, 21, 13, 17, 19, 15, 23}]
#v(20pt)
#only("2-")[- Ordered set: {11, 13, 15, 17, 19, 21, 23}]
#v(20pt)
#only("3-")[- Median: 17]
#only("1")[
#voiceover("To summarize, we started with the given set of numbers: 11, 21, 13, 17, 19, 15, and 23.")
]
#only("2")[
#voiceover("We arranged these numbers in ascending order: 11, 13, 15, 17, 19, 21, and 23.")
]
#only("3")[
#voiceover("We then found the middle number in this ordered set, which is 17. Therefore, the median of the set is 17.")
]
]