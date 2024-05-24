#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pie Chart Slices]
#v(40pt)
What does a slice in a pie chart represent?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) A category's absolute value]#only("2-")[#text(fill:red)[a) A category's absolute value]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) A category's proportional value]#only("3-")[#text(fill:green)[b) A category's proportional value]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) The total value of all categories]#only("4-")[#text(fill:red)[c) The total value of all categories]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]

#only("1")[#voiceover("Sorry, that's not correct. Let's take a look at the right solution.")]
#only("2")[#voiceover("Option a is incorrect. A slice in a pie chart does not represent a category's absolute value.")]
#only("3")[#voiceover("Option b is correct. Each slice in a pie chart represents a category's proportional value, i.e., the proportion of the total that belongs to that category.")]
#only("4")[#voiceover("Option c is incorrect. The total value of all categories is represented by the entire pie, not by a single slice.")]
#only("5")[#voiceover("And option d is incorrect, because one of the above options (b) is correct.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt

# Data
sizes = [30, 50, 20]
labels = ['Category A', 'Category B', 'Category C']
colors = ['#ff9999','#66b3ff','#99ff99']

# Create pie chart
plt.figure(figsize=(8,8))
plt.pie(sizes, labels=labels, colors=colors, autopct='%1.1f%%', startangle=90)

# Equal aspect ratio ensures that pie is drawn as a circle
plt.axis('equal')  
plt.title("Example Pie Chart")

plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[- Each slice 🍕 represents a category's #text(weight: "bold")[proportional value].]
#only("2-")[- Category A: 30% of total]
#only("3-")[- Category B: 50% of total]
#only("4-")[- Category C: 20% of total]
#only("5-")[- Slices add up to 100% 💯]

#only("1")[#voiceover("Let's look at an example pie chart to understand this better.")]
#only("2")[#voiceover("In this pie chart, the red slice represents Category A, which makes up 30% of the total.")]
#only("3")[#voiceover("The blue slice represents Category B, which accounts for 50% of the total.")]
#only("4")[#voiceover("And the green slice represents Category C, which is 20% of the total.")]
#only("5")[#voiceover("Notice how each slice represents a proportion, and all the slices together make up 100% of the pie.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Pie chart slices 🍕 represent #text(weight: "bold")[proportional values]]
#v(20pt)
#only("2-")[- Each slice is a category's #text(weight: "bold")[percentage] of the total]
#v(20pt)
#only("3-")[- All slices together equal #text(weight: "bold")[100%] 💯]
#v(20pt)
#only("4-")[- Useful for showing #text(weight: "bold")[relative sizes] of categories]

#only("1")[#voiceover("To summarize, slices in a pie chart represent proportional values.")]
#only("2")[#voiceover("Each slice shows what percentage of the total belongs to a particular category.")]
#only("3")[#voiceover("And all the slices put together make up 100% of the data.")]
#only("4")[#voiceover("Pie charts are a great way to visualize the relative sizes of different categories within a whole.")]
]