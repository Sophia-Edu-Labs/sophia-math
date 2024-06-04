#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Confirmation Bias 🧠]

#only("1-")[
- Tendency to seek information that confirms preconceptions
]

#only("2-")[
- Ignore or discount contradictory information
]

#only("3-")[
- Can lead to flawed decision-making in finance 📉
]

#only("1")[
#voiceover("Confirmation bias is the tendency to search for, interpret, and remember information that confirms one's preconceptions.")
]

#only("2")[
#voiceover("This means people are more likely to seek out and focus on information that supports their existing beliefs, while ignoring or discounting information that contradicts those beliefs.")
]

#only("3")[
#voiceover("In the context of financial decision-making, confirmation bias can lead to flawed decisions. Investors might seek out information that confirms their investment thesis, while ignoring red flags or contradictory data.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 📊]

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
labels = ['Supporting Data', 'Contradictory Data']
sizes = [70, 30]
colors = ['#1f77b4', '#ff7f0e'] 

# Create a pie chart
fig, ax = plt.subplots()
ax.pie(sizes, labels=labels, autopct='%1.1f%%', startangle=90, colors=colors)
ax.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle.

# Add a title
ax.set_title("Confirmation Bias in Data Selection", pad=20)

plt.show()
```,
width: 360pt),
)
]
]
]

#only("1")[
#voiceover("For example, an investor bullish on a stock might focus on positive news and earnings reports that support their view, while downplaying or ignoring any negative news or warning signs.")
]

#only("2")[
#voiceover("This selective focus on confirming information can lead to overconfidence and poor investment decisions.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mitigation 🛡️]

#only("1-")[
- Actively seek out contradictory information
]

#only("2-")[
- Consider multiple perspectives
]

#only("3-")[
- Be open to changing your mind based on evidence
]

#only("1")[
#voiceover("To mitigate confirmation bias, it's important to actively seek out information that challenges your existing beliefs.")
]

#only("2")[
#voiceover("Consider multiple perspectives and be willing to truly consider contradictory data.")
]

#only("3")[
#voiceover("Most importantly, be open to changing your mind if the evidence warrants it. Recognizing and countering confirmation bias can lead to more objective and sound financial decisions.")
]
]