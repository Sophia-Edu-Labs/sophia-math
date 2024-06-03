#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence Bias 🤔]
#v(40pt)
#only("1-")[- Overestimating one's abilities]
#only("2-")[- Leads to excessive risk-taking in financial decisions 📉]
#only("1")[
#voiceover("Overconfidence bias is when individuals overestimate their own abilities.")
]
#only("2")[
#voiceover("This leads to excessive risk-taking in financial decisions.")
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
labels = ['Actual Skill', 'Perceived Skill']
actual_skill = [5]
perceived_skill = [8]

x = np.arange(len(labels))  # the label locations
width = 0.35  # the width of the bars

fig, ax = plt.subplots()
rects1 = ax.bar(x - width/2, actual_skill, width, label='Actual Skill', color='g')
rects2 = ax.bar(x + width/2, perceived_skill, width, label='Perceived Skill', color='r')

# Add some text for labels, title and custom x-axis tick labels, etc.
ax.set_ylabel('Skill Level')
ax.set_title('Overconfidence Bias')
ax.set_xticks(x)
ax.set_xticklabels(labels)
ax.legend()

def autolabel(rects):
    """Attach a text label above each bar in *rects*, displaying its height."""
    for rect in rects:
        height = rect.get_height()
        ax.annotate('{}'.format(height),
                    xy=(rect.get_x() + rect.get_width() / 2, height),
                    xytext=(0, 3),  # 3 points vertical offset
                    textcoords="offset points",
                    ha='center', va='bottom')

autolabel(rects1)
autolabel(rects2)

fig.tight_layout()

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("For example, an investor might rate their actual skill level at a 5, but due to overconfidence bias, they perceive their skill level as an 8.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Consequences 🔍]
#v(40pt)
#only("1-")[- Overtrading]
#only("2-")[- Underdiversification]
#only("3-")[- Underestimating risks]
#only("1")[
#voiceover("This can lead to overtrading, as the investor believes they can time the market better than they actually can.")
]
#only("2")[
#voiceover("It can also lead to underdiversification, as the investor may believe they can pick winning stocks better than they actually can.")
]
#only("3")[
#voiceover("Overall, overconfidence bias can cause investors to underestimate risks, leading to suboptimal financial decisions.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap 🎬]
#v(40pt)
#only("1-")[- Overconfidence bias: overestimating one's abilities]
#only("2-")[- Leads to excessive risk-taking 🎲]
#only("3-")[- Can result in overtrading, underdiversification, underestimating risks]
#only("1")[
#voiceover("In summary, overconfidence bias is when individuals overestimate their own abilities.")
]
#only("2")[
#voiceover("This leads to excessive risk-taking in financial decisions.")
]
#only("3")[
#voiceover("It can result in overtrading, underdiversification, and underestimating risks, all of which can negatively impact financial outcomes.")
]
]