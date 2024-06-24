#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mode of a Data Set]
// The title "Mode of a Data Set" is shown on this slide
#v(40pt)
#only("1-")[- Mode: the value that appears most frequently in a data set 📊]
#v(20pt)
#only("2-")[- Data set: (50, 55, 60, 55, 65, 60, 65) 🧮]
#v(20pt)
#only("3-")[- Frequency: 50 (1), 55 (2), 60 (2), 65 (2) 🔢]
#v(20pt)
#only("4-")[- Mode: 55, 60, 65 (all appear twice) 🏆]
#only("1")[
#voiceover("Great job on answering the question correctly! Let's go over the solution step-by-step. The mode is the value that appears most frequently in a data set.")
]
#only("2")[
#voiceover("The data set we are working with is: 50, 55, 60, 55, 65, 60, 65.")
]
#only("3")[
#voiceover("Next, we count the frequency of each value. We have: 50 appears once, 55 appears twice, 60 appears twice, and 65 appears twice.")
]
#only("4")[
#voiceover("Since 55, 60, and 65 all appear twice, they are all modes of the data set.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Frequency Table]
// The title "Frequency Table" is shown on this slide
#v(40pt)
#table(
fill: (col, _) => if col==1 {aqua } else { white },
columns: (auto, auto),
inset: 10pt,
align: horizon,
[], [*Value*], [*Frequency*],
[*L*],
[$ 50 $], [$ 1 $],
[$ 55 $], [$ 2 $],
[$ 60 $], [$ 2 $],
[$ 65 $], [$ 2 $]
)
// The frequency table is shown on this slide
#only("1")[
#voiceover("Here is a frequency table for the data set. It shows each value and how many times it appears.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
// The title "Visual Representation" is shown on this slide
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt

# Data
values = [50, 55, 60, 65]
frequencies = [1, 2, 2, 2]

# Plot
plt.bar(values, frequencies, color=['blue', 'green', 'green', 'green'])
plt.xlabel('Values')
plt.ylabel('Frequency')
plt.title('Frequency of Values in Data Set')
plt.xticks(values)
plt.yticks(range(1, 4))

# Display the plot
plt.show()

```,
width: 360pt),
)
]
]
// The bar chart shows the frequency of each value in the data set
#only("1")[
#voiceover("This bar chart visually represents the frequency of each value in the data set. As you can see, 55, 60, and 65 each appear twice.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
// The title "Conclusion" is shown on this slide
#v(40pt)
#only("1-")[- The mode is the value that appears most frequently 📊]
#v(20pt)
#only("2-")[- In this data set, 55, 60, and 65 each appear twice 🏆]
#v(20pt)
#only("3-")[- Therefore, the modes are 55, 60, and 65 🎉]
#only("1")[
#voiceover("To summarize, the mode is the value that appears most frequently in a data set.")
]
#only("2")[
#voiceover("In this data set, 55, 60, and 65 each appear twice.")
]
#only("3")[
#voiceover("Therefore, the modes are 55, 60, and 65. Great job!")
]
]