#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pie Charts 🥧]
#v(40pt)
#only("1-")[- Represent parts of a whole 🍰]
#v(20pt)
#only("2-")[- Each slice shows proportion of a category 🍕]
#only("1")[
#voiceover("Pie charts are a type of graph used to represent parts of a whole.")
]
#only("2")[
#voiceover("In a pie chart, each slice of the pie represents the proportion of a particular category relative to the whole.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: Budget 💰]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt

# Data
categories = ['Rent', 'Food', 'Transportation', 'Entertainment', 'Savings']
sizes = [40, 25, 15, 10, 10]

# Create pie chart
fig, ax = plt.subplots()
ax.pie(sizes, labels=categories, autopct='%1.1f%%', startangle=90)
ax.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle.

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Let's look at an example. Suppose we have a budget with categories like rent, food, transportation, entertainment, and savings.")
]
]]

#slide()[
#text(size: 30pt, weight: "bold")[Interpreting the Chart 📊]
#v(40pt)
#only("1-")[- Whole pie represents total budget 💯]
#v(20pt)
#only("2-")[- Each slice is a portion of the budget 🍰]
#v(20pt)
#only("3-")[- Slice size ↔ Category proportion 📏]
#only("1")[
#voiceover("In this pie chart, the whole pie represents the total budget.")
]
#only("2")[
#voiceover("Each slice of the pie represents a portion of the budget spent on a specific category.")
]
#only("3")[
#voiceover("The size of each slice is proportional to the amount spent on that category relative to the total budget.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Pie charts show parts of a whole 🍕]
#v(20pt)
#only("2-")[- Slice size represents proportion 📏]
#v(20pt)
#only("3-")[- Useful for comparing categories 📊]
#only("1")[
#voiceover("To summarize, pie charts are used to show parts of a whole.")
]
#only("2")[
#voiceover("The size of each slice represents the proportion of a category relative to the whole.")
]
#only("3")[
#voiceover("Pie charts are particularly useful when you want to compare the proportions of different categories.")
]
]