#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mode with Complex Numbers]
#v(40pt)
#only("1-")[- Mode: the number that appears most frequently in a set of numbers 📊]
#v(20pt)
#only("2-")[- Given set: (7, 9, 7, 8, 9, 6, 10, 8)]
#v(20pt)
#only("3-")[- Frequency count: 7 appears 2 times, 9 appears 2 times, 8 appears 2 times, 6 appears 1 time, 10 appears 1 time]
#v(20pt)
#only("4-")[- Mode: 7, 9, and 8 (all appear 2 times)]
#v(20pt)
#only("5-")[- Conclusion: The set has multiple modes, which are 7, 9, and 8]
#only("1")[
#voiceover("Great job on answering the question! Let's go through the solution step-by-step. The mode is the number that appears most frequently in a set of numbers.")
]
#only("2")[
#voiceover("The given set of numbers is 7, 9, 7, 8, 9, 6, 10, and 8.")
]
#only("3")[
#voiceover("Next, we count the frequency of each number. We see that 7 appears 2 times, 9 appears 2 times, 8 appears 2 times, 6 appears 1 time, and 10 appears 1 time.")
]
#only("4")[
#voiceover("Since 7, 9, and 8 all appear 2 times, they are the modes of the set.")
]
#only("5")[
#voiceover("In conclusion, the set has multiple modes, which are 7, 9, and 8.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Frequency Distribution]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt

# Data
numbers = [7, 9, 7, 8, 9, 6, 10, 8]
frequency = {6: 1, 7: 2, 8: 2, 9: 2, 10: 1}

# Plotting the frequency distribution
plt.bar(frequency.keys(), frequency.values(), color=['blue', 'green', 'green', 'green', 'blue'])
plt.xlabel('Numbers')
plt.ylabel('Frequency')
plt.title('Frequency Distribution of the Given Set')
plt.xticks([6, 7, 8, 9, 10])
plt.yticks([1, 2])

# Highlighting the modes
plt.text(7, 2, 'Mode', ha='center', va='bottom', color='green', fontsize=12)
plt.text(8, 2, 'Mode', ha='center', va='bottom', color='green', fontsize=12)
plt.text(9, 2, 'Mode', ha='center', va='bottom', color='green', fontsize=12)

plt.show()

```,
width: 360pt),
caption: [],
)
]
]
#v(30pt)
#only("1-")[- Frequency distribution of the given set]
#only("1")[
#voiceover("Here is the frequency distribution of the given set. The numbers are plotted on the x-axis, and their frequencies are plotted on the y-axis. The modes, which are 7, 8, and 9, are highlighted in green.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- Mode: the number(s) that appear most frequently in a set]
#v(20pt)
#only("2-")[- Given set: (7, 9, 7, 8, 9, 6, 10, 8)]
#v(20pt)
#only("3-")[- Modes: 7, 9, and 8 (all appear 2 times)]
#v(20pt)
#only("4-")[- The set has multiple modes]
#only("1")[
#voiceover("To summarize, the mode is the number or numbers that appear most frequently in a set. In the given set, 7, 9, and 8 all appear 2 times, making them the modes. Therefore, the set has multiple modes.")
]
]