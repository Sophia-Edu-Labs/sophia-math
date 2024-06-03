#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Let's talk about cognitive biases and how they affect financial decisions.")]
#text(size: 30pt, weight: "bold")[Cognitive Biases]
#v(40pt)
#only("2-")[- Systematic deviations from rationality 🧠🚫]
#v(20pt)
#only("3-")[- Affect judgment and decision-making 🤔💭]
#v(20pt)
#only("4-")[- Particularly relevant in finance 💰📈]
#only("2")[
#voiceover("Cognitive biases are systematic deviations from rationality or normative judgment. In other words, they are predictable patterns of thought and behavior that lead us away from making rational decisions.")
]
#only("3")[
#voiceover("These biases affect the way we judge situations and make decisions across many areas of life, often without us realizing it.")
]
#only("4")[
#voiceover("Cognitive biases are particularly relevant in the domain of finance, where decisions can have significant consequences.")
]
]

#slide()[

#only("1")[
#voiceover("Let's look at an example to understand how cognitive biases can impact financial decisions.")]
#text(size: 30pt, weight: "bold")[Example: Overconfidence Bias]
#v(40pt)
#only("2-")[- Overestimating one's abilities 🦸‍♀️🦸‍♂️]
#v(20pt)
#only("3-")[- Leads to excessive risk-taking 🎲💸]
#v(20pt)
#only("4-")[- Can result in poor investment decisions 📉]
#only("2")[
#voiceover("One common cognitive bias is overconfidence. This is where people overestimate their own abilities, knowledge, and future prospects.")
]
#only("3")[
#voiceover("In a financial context, overconfidence can lead to excessive risk-taking. An overconfident investor might invest too much in a single stock, believing they have a special insight or ability to pick winners.")
]
#only("4")[
#voiceover("However, this overconfidence often leads to poor investment decisions. The overconfident investor might not properly diversify their portfolio, leading to larger losses if their chosen stock performs poorly.")
]
]

#slide()[

#only("1")[
#voiceover("Cognitive biases can have a real impact on financial outcomes. Let's visualize this.")]
#text(size: 30pt, weight: "bold")[Impact of Cognitive Biases]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

categories = ['Rational Decisions', 'Biased Decisions'] 
outcomes = [80, 50]

fig, ax = plt.subplots()

ax.bar(categories, outcomes, color=['green', 'red'], alpha=0.7)

ax.set_ylabel('Financial Outcome')
ax.set_title('Impact of Cognitive Biases on Financial Decisions')

for i, v in enumerate(outcomes):
    ax.text(i, v+2, str(v), ha='center')

plt.show()
```,
width: 360pt),
)
]
]
#only("2")[
#voiceover("As we can see in this chart, rational decisions tend to lead to better financial outcomes, while decisions influenced by cognitive biases often lead to poorer outcomes.")
]
#only("3")[
#voiceover("This underscores the importance of being aware of these biases and striving to make more rational, objective decisions when it comes to our finances.")
]
]
]

#slide()[

#only("1")[
#voiceover("To recap, cognitive biases are systematic deviations from rationality that can significantly impact our financial decisions and outcomes.")]
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("2-")[- Cognitive biases are predictable patterns 📊]
#v(20pt)
#only("3-")[- They affect judgment and decision-making 🧠➡💭]
#v(20pt)
#only("4-")[- Particularly relevant in finance 💰🏦]
#v(20pt)
#only("5-")[- Awareness is key to making better decisions 🔑]
#only("2")[
#voiceover("These biases are predictable patterns of thought and behavior that deviate from rationality.")
]
#only("3")[
#voiceover("They affect the way we judge situations and make decisions, often without us realizing it.")
]
#only("4")[
#voiceover("Cognitive biases are especially relevant in the domain of finance, where the stakes are often high.")
]
#only("5")[
#voiceover("By being aware of these biases and consciously striving to make more rational decisions, we can improve our financial outcomes.")
]
]