#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mode of a Data Set]
#v(40pt)
#only("1-")[- The mode is the number that appears most frequently in a data set. 📊]
#v(20pt)
#only("2-")[- Given data set: $ (3, 3, 6, 6, 9, 9) $]
#v(20pt)
#only("3-")[- Count the frequency of each number: 
  - $3$ appears $2$ times
  - $6$ appears $2$ times
  - $9$ appears $2$ times]
#v(20pt)
#only("4-")[- Since all numbers appear with the same frequency, the data set has no mode.]
#only("1")[
#voiceover("Let's review the correct solution step-by-step. The mode is the number that appears most frequently in a data set.")
]
#only("2")[
#voiceover("Here is the given data set: three, three, six, six, nine, nine.")
]
#only("3")[
#voiceover("Next, we count the frequency of each number. The number three appears two times, the number six appears two times, and the number nine appears two times.")
]
#only("4")[
#voiceover("Since all numbers appear with the same frequency, the data set has no mode.")
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
import numpy as np

# Data
data = [3, 3, 6, 6, 9, 9]
labels, counts = np.unique(data, return_counts=True)

# Plot
fig, ax = plt.subplots()
ax.bar(labels, counts, color=['blue', 'green', 'red'])
ax.set_xlabel('Numbers')
ax.set_ylabel('Frequency')
ax.set_title('Frequency of Each Number in the Data Set')
ax.set_xticks(labels)
ax.set_yticks(range(1, max(counts)+1))

# Display the plot
plt.show()

```,
width: 360pt),
)
]
]
#v(30pt)
#only("1")[
#voiceover("Let's visualize the frequency of each number in the data set using a bar chart.")
]
#only("2")[
#voiceover("As we can see, the numbers three, six, and nine each appear two times in the data set.")
]
#only("3")[
#voiceover("Since all numbers have the same frequency, the data set has no mode.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- The mode is the number that appears most frequently in a data set. 📊]
#v(20pt)
#only("2-")[- In the given data set $ (3, 3, 6, 6, 9, 9) $, all numbers appear with the same frequency. 🔄]
#v(20pt)
#only("3-")[- Therefore, the data set has no mode. ❌]
#only("1")[
#voiceover("To summarize, the mode is the number that appears most frequently in a data set.")
]
#only("2")[
#voiceover("In the given data set, three, three, six, six, nine, nine, all numbers appear with the same frequency.")
]
#only("3")[
#voiceover("Therefore, the data set has no mode.")
]
]