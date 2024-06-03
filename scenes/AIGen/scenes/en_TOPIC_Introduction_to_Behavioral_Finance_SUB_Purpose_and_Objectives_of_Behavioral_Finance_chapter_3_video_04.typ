#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Common Biases in Behavioral Finance 🧠]
#v(40pt)
#only("1-")[- Overconfidence 😎]
#only("1")[
#voiceover("Common biases in Behavioral Finance include overconfidence, where investors overestimate their abilities and the accuracy of their judgments.")
]

#v(20pt)
#only("2-")[- Loss aversion 📉]
#only("2")[
#voiceover("Another common bias is loss aversion, which refers to the tendency to avoid losses more than acquiring equivalent gains.")
]

#v(20pt)
#only("3-")[- Herd behavior 🐑]
#only("3")[
#voiceover("Herd behavior is also a common bias, where investors follow the crowd and make decisions based on the actions of others rather than their own analysis.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Impact of Biases 📊]
#v(40pt)
#only("1-")[- Influence investor behavior 🧍‍♂️]
#only("1")[
#voiceover("These biases can significantly influence investor behavior, leading to irrational decision-making.")
]

#v(20pt)
#only("2-")[- Lead to market anomalies 📈📉]
#only("2")[
#voiceover("Biases can lead to market anomalies, such as bubbles and crashes, by causing investors to collectively behave in irrational ways.")
]

#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Simulate biased investor behavior
np.random.seed(0)
biased_behavior = np.random.normal(0, 1, 100).cumsum()

# Create the plot
fig, ax = plt.subplots(figsize=(6, 4))
ax.plot(biased_behavior, color='red', label='Biased Behavior')
ax.set_xlabel('Time')
ax.set_ylabel('Cumulative Behavior')
ax.set_title('Impact of Biases on Market Behavior')
ax.legend()
ax.grid(True)

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
#only("3")[
#voiceover("This graph illustrates how biased investor behavior can lead to erratic market movements over time.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mitigating Biases 🛡]
#v(40pt)
#only("1-")[- Education 📚]
#only("1")[
#voiceover("To mitigate these biases, education is crucial. Investors should learn about common biases and how they can affect their decision-making.")
]

#v(20pt)
#only("2-")[- Awareness 🧘‍♀️]
#only("2")[
#voiceover("Awareness is also important. Investors should be mindful of their own biases and try to recognize when they may be influencing their decisions.")
]

#v(20pt)
#only("3-")[- Decision-making frameworks 🧮]
#only("3")[
#voiceover("Using structured decision-making frameworks can help investors systematically analyze information and make more rational choices, reducing the impact of biases.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Common biases: overconfidence, loss aversion, herd behavior]
#only("1")[
#voiceover("In summary, common biases in Behavioral Finance include overconfidence, loss aversion, and herd behavior.")
]

#v(20pt)
#only("2-")[- Biases influence investor behavior and can lead to market anomalies]
#only("2")[
#voiceover("These biases can significantly influence investor behavior and lead to market anomalies.")
]

#v(20pt)
#only("3-")[- Mitigate biases through education, awareness, and decision-making frameworks]
#only("3")[
#voiceover("To mitigate these biases, investors should focus on education, awareness, and using structured decision-making frameworks.")
]

#v(20pt)
#only("4-")[- Understanding biases is crucial for making rational financial decisions 🎯]
#only("4")[
#voiceover("Understanding and managing these biases is crucial for making more rational and effective financial decisions.")
]
]