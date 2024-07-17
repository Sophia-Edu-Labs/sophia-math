#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Not quite. Let's go through the correct solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Absolute Frequency of Students Who Like Math]

#v(40pt)

#only("2-")[#text()[- A survey of 50 students found 10 like math, 20 like science, and 20 like history 📊]]
#v(20pt)
#only("3-")[#text()[- Absolute frequency is the count of occurrences of a particular category 📈]]
#v(20pt)
#only("4-")[#text()[- The absolute frequency of students who like math is 10 🧮]]

#only("2")[
#voiceover("In a survey of 50 students, we found that 10 like math, 20 like science, and 20 like history.")
]

#only("3")[
#voiceover("Absolute frequency is simply the count of occurrences of a particular category.")
]

#only("4")[
#voiceover("Therefore, the absolute frequency of students who like math is 10.")
]
]


#slide()[
#only("1")[
#voiceover("Let's visualize the data to make it clearer.")
]

#text(size: 30pt, weight: "bold")[Data Visualization]

#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt

categories = ['Math', 'Science', 'History']
frequencies = [10, 20, 20]

plt.bar(categories, frequencies, color=['blue', 'green', 'red'])
plt.xlabel('Subjects')
plt.ylabel('Number of Students')
plt.title('Survey Results: Students\' Preferences')
plt.ylim(0, max(frequencies) + 5)  # Adding some space above the highest bar for better visualization
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Here, we have a bar chart showing the number of students who like each subject.")
]
]


#slide()[
#only("1")[
#voiceover("To summarize, the absolute frequency of students who like math is 10.")
]

#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("2-")[#text()[- Absolute frequency is the count of occurrences of a particular category 📈]]
#v(20pt)
#only("3-")[#text()[- In our survey, 10 students like math 🧮]]

#only("2")[
#voiceover("Remember, absolute frequency is the count of occurrences of a particular category.")
]

#only("3")[
#voiceover("In our survey, 10 students like math.")
]
]