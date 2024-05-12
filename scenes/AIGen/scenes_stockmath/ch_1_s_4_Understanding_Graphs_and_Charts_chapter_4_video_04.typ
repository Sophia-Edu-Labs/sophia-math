#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pie Charts Recap 🥧]

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt

# Data
categories = ['Category A', 'Category B', 'Category C', 'Category D']
sizes = [30, 25, 20, 25]

# Create pie chart
fig, ax = plt.subplots()
ax.pie(sizes, labels=categories, autopct='%1.1f%%', startangle=90)
ax.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle

# Add title
plt.title("Example Pie Chart")

plt.show()
```,
width: 360pt),
)
]
]
]

#only("1")[#voiceover("Let's recap what we've learned about pie charts. Pie charts are a type of graph that show the proportions of different categories relative to the whole.")]

#only("2-")[- Each slice represents a category 🍕]

#only("2")[#voiceover("In a pie chart, each slice represents a different category.")]

#only("3-")[- Size of slice = proportion of category 📏]

#only("3")[#voiceover("The size of each slice corresponds to the proportion of that category relative to the whole.")]

#only("4-")[- Useful for comparing parts to the whole 🔍]

#only("4")[#voiceover("Pie charts are particularly useful when you want to compare the size of different parts to the whole.")]

#only("5-")[- Example: Market share, budget allocation 💰]

#only("5")[#voiceover("For example, you might use a pie chart to show market share of different companies in an industry, or to show how a budget is allocated across different departments.")]

#only("6-")[- Key points: proportions, parts of a whole 🗝️]

#only("6")[#voiceover("The key points to remember about pie charts are that they show proportions, and they're used to represent parts of a whole.")]

]