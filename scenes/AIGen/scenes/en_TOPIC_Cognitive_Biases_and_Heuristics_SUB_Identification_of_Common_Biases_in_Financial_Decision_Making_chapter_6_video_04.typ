#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Recency Bias]
#v(40pt)
#only("1-")[- Weighing recent events more heavily than earlier events 🧮⏲️]
#only("1")[
#voiceover("Recency bias is the tendency to weigh recent events more heavily than earlier events.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
events = ['Event 1', 'Event 2', 'Event 3', 'Event 4', 'Event 5']
weights = [0.1, 0.15, 0.2, 0.25, 0.3]

# Create plot
fig, ax = plt.subplots(figsize=(8, 6))
ax.bar(events, weights)

# Add labels and title
ax.set_xlabel('Events')
ax.set_ylabel('Weight')
ax.set_title('Recency Bias: Weighing Recent Events More')

# Adjust layout
fig.tight_layout()

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("For example, if we have a series of events, recency bias would lead us to give more importance to the latest events, Event 4 and Event 5, compared to the earlier events.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Impact on Financial Decisions]
#v(40pt)
#only("1-")[- Overemphasis on recent performance 📈]
#v(20pt)
#only("2-")[- Neglecting long-term trends 📉]
#only("1")[
#voiceover("In financial decision-making, recency bias can lead to an overemphasis on recent performance.")
]
#only("2")[
#voiceover("This can cause investors to neglect long-term trends and make decisions based on short-term fluctuations.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Recency bias: weighing recent events more heavily 🧮⏲️]
#v(20pt)
#only("2-")[- Leads to overemphasis on recent performance in financial decisions 📈]
#v(20pt)
#only("3-")[- Can cause neglect of long-term trends 📉]
#only("1")[
#voiceover("To recap, recency bias is the tendency to weigh recent events more heavily than earlier events.")
]
#only("2")[
#voiceover("In financial decision-making, this can lead to an overemphasis on recent performance.")
]
#only("3")[
#voiceover("As a result, recency bias can cause investors to neglect long-term trends and make suboptimal decisions based on short-term fluctuations.")
]
]