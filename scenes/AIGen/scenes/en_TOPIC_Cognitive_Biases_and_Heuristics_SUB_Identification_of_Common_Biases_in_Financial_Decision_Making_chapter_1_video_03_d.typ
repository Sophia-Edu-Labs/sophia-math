#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence Bias]
#v(40pt)
How can overconfidence bias affect financial decisions?
#v(40pt)
#only("-1")[a) It leads to cautious investing]#only("2-")[#text(fill:red)[a) It leads to cautious investing]]
#v(10pt)
#only("-2")[b) It leads to excessive risk-taking]#only("1-")[#text(fill:green)[b) It leads to excessive risk-taking]]
#v(10pt)  
#only("-3")[c) It has no effect]#only("3-")[#text(fill:red)[c) It has no effect]]
#v(10pt)
#only("-4")[d) It improves decision-making]#only("4-")[#text(fill:red)[d) It improves decision-making]]

#only("1")[
#voiceover("That's not quite right. Let's take a look at the correct solution.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence Bias]
#v(40pt)  
#only("1-")[- Tendency to overestimate one's abilities 🧠]
#v(20pt)
#only("2-")[- Leads to taking on more risk than warranted 🎲]
#v(20pt)  
#only("3-")[- Can result in poor investment decisions 📉]
#v(20pt)
#only("4-")[- Example: Overtrading, underdiversification 📊]

#only("1")[
#voiceover("Overconfidence bias is the tendency for individuals to overestimate their own abilities and knowledge.")
]
#only("2")[  
#voiceover("This can lead to taking on more risk than is warranted, as the individual believes they have a greater ability to predict or control outcomes than they actually do.")
]
#only("3")[
#voiceover("In financial decision-making, this can result in poor investment choices, as the overconfident individual may not adequately consider potential downsides.")  
]
#only("4")[
#voiceover("Some examples of how overconfidence bias manifests in investing include overtrading, underdiversification, and holding losing positions too long in the belief they will recover.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence Bias]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

categories = ['Actual Skill', 'Perceived Skill'] 
scores = [60, 90]

fig, ax = plt.subplots()

ax.bar(categories, scores, color=['blue', 'red'])

ax.set_ylim([0, 100])
ax.set_ylabel('Skill Level')
ax.set_title('Actual vs. Perceived Skill')

for i, v in enumerate(scores):
    ax.text(i, v+1, str(v), ha='center') 

plt.show()
```,
width: 360pt),
)
]
]
]
#v(40pt)  
#only("2-")[Overconfidence bias leads to a mismatch between actual and perceived skill levels, causing overestimation of abilities. 📏]

#only("1")[
#voiceover("Here's a visual representation of how overconfidence bias works.")
]  
#only("2")[
#voiceover("The blue bar represents an individual's actual skill level, while the red bar represents their perceived skill level. Overconfidence bias causes the perceived skill level to be significantly higher than the actual skill level. This mismatch leads to the individual overestimating their abilities and making decisions based on this inflated self-assessment.")  
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Overconfidence bias: overestimating one's abilities 🧠]
#v(20pt)  
#only("2-")[- Leads to excessive risk-taking in financial decisions 🎲]
#v(20pt)
#only("3-")[- Can result in poor investment choices 📉]
#v(20pt)  
#only("4-")[- Important to be aware of and mitigate this bias 🎯]

#only("1")[
#voiceover("To summarize, overconfidence bias is the tendency to overestimate one's own abilities and knowledge.")
]
#only("2")[  
#voiceover("In financial decision-making, this leads to taking on excessive risk, as the individual believes they have a greater ability to predict or control outcomes than they actually do.")
]
#only("3")[
#voiceover("This can result in poor investment choices, such as overtrading, underdiversification, and holding losing positions too long.")  
]
#only("4")[
#voiceover("It's important for investors to be aware of overconfidence bias and take steps to mitigate its effects, such as seeking out diverse perspectives, setting strict risk limits, and regularly reviewing the performance of their investments against benchmarks.")
]
]