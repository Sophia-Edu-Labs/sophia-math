#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Confirmation Bias Recap 🧠]
#v(40pt)
#only("1-")[- Tendency to seek information that confirms preconceptions 🔍]
#v(20pt)
#only("2-")[- Interpreting information in a way that supports beliefs 🎨]
#v(20pt)
#only("3-")[- Remembering information that reinforces opinions 📚]
#only("1")[
#voiceover("Let's recap confirmation bias. Confirmation bias is the tendency to search for information that confirms one's preconceptions.")
]
#only("2")[
#voiceover("It also involves interpreting information in a way that supports one's beliefs.")
]
#only("3")[
#voiceover("And it includes remembering information that reinforces one's opinions.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Data
labels = ['Supporting', 'Opposing', 'Neutral']
sizes = [60, 10, 30]
colors = ['#1f77b4', '#ff7f0e', '#2ca02c']

# Create pie chart
fig, ax = plt.subplots()
ax.pie(sizes, labels=labels, autopct='%1.1f%%', startangle=90, colors=colors)
ax.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle.

# Add title
plt.title('Information Sought', fontsize=20)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("For example, if someone has a belief, they might seek out information that supports that belief, as shown in this pie chart.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Impact on Financial Decisions 💰]
#v(40pt)
#only("1-")[- Seeking information that confirms investment beliefs 📈]
#v(20pt)
#only("2-")[- Ignoring contradictory information 🙈]
#v(20pt)
#only("3-")[- Can lead to poor financial decisions 📉]
#only("1")[
#voiceover("In financial decision-making, confirmation bias can lead to seeking information that confirms one's investment beliefs.")
]
#only("2")[
#voiceover("It can also lead to ignoring contradictory information.")
]
#only("3")[
#voiceover("This can result in poor financial decisions.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎬]
#v(40pt)
#only("1-")[- Confirmation bias: seeking confirming information 🔍]
#v(20pt)
#only("2-")[- Can affect financial decisions 💰]
#v(20pt)
#only("3-")[- Be aware and consider all information 🧠]
#only("1")[
#voiceover("In summary, confirmation bias is the tendency to seek information that confirms one's preconceptions.")
]
#only("2")[
#voiceover("It can affect financial decisions by leading to the pursuit of confirming information and the neglect of contradictory information.")
]
#only("3")[
#voiceover("It's important to be aware of confirmation bias and to consider all relevant information when making financial decisions.")
]
]