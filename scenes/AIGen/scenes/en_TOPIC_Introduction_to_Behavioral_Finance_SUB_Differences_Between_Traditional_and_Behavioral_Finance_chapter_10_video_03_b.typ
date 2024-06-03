#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Heuristics]
#v(40pt)
#only("1-")[Using heuristics can lead to \_\_\_\_\_.]
#v(40pt)
#only("-1")[a) more accurate decisions]#only("2-")[#text(fill:red)[a) more accurate decisions]]
#v(10pt)
#only("-1")[b) biases]#only("2-")[#text(fill:green)[b) biases]]
#v(10pt)
#only("-1")[c) better investment strategies]#only("3-")[#text(fill:red)[c) better investment strategies]]
#v(10pt)
#only("-1")[d) reduced risk]#only("4-")[#text(fill:red)[d) reduced risk]]

#only("1")[#voiceover("Great job! You selected the correct answer.")]
#only("2")[#voiceover("Using heuristics, which are mental shortcuts or rules of thumb, can indeed lead to biases in decision-making.")]
#only("3")[#voiceover("Heuristics do not necessarily lead to better investment strategies. In fact, relying too heavily on heuristics can result in suboptimal investment decisions.")]
#only("4")[#voiceover("Similarly, heuristics do not guarantee reduced risk. Depending on the situation, heuristics might even lead to increased risk if they cause an investor to overlook important information.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Why Heuristics Lead to Biases]
#v(40pt)
#only("1-")[- Heuristics are mental shortcuts 🧠💨]
#v(20pt)
#only("2-")[- They help make decisions quickly, but not always accurately 🏃‍♂️❌]
#v(20pt)
#only("3-")[- Relying too much on heuristics can lead to systematic biases 🙌➡️📉]
#v(20pt)
#only("4-")[- Examples: Anchoring bias, Availability bias, Representativeness bias 📌🗓️🖼️]

#only("1")[#voiceover("Let's understand why heuristics can lead to biases.")]
#only("2")[#voiceover("Heuristics are mental shortcuts that help us make decisions quickly. However, they don't always lead to the most accurate decisions.")]
#only("3")[#voiceover("When we rely too heavily on these mental shortcuts, it can lead to systematic biases in our thinking and decision-making.")]
#only("4")[#voiceover("Some common biases that result from heuristics include the anchoring bias, where we rely too heavily on the first piece of information we receive; the availability bias, where we overestimate the likelihood of events that are easily remembered; and the representativeness bias, where we make judgments based on how similar something is to a typical case.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Heuristics vs. Rational Analysis]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

categories = ['Speed', 'Accuracy']
heuristics = [8, 3]
rational_analysis = [4, 8]

x = np.arange(len(categories))  
width = 0.35  

fig, ax = plt.subplots()
rects1 = ax.bar(x - width/2, heuristics, width, label='Heuristics', color='orange')
rects2 = ax.bar(x + width/2, rational_analysis, width, label='Rational Analysis', color='blue')

ax.set_ylabel('Score')
ax.set_title('Heuristics vs Rational Analysis')
ax.set_xticks(x)
ax.set_xticklabels(categories)
ax.legend()

ax.bar_label(rects1, padding=3)
ax.bar_label(rects2, padding=3)

fig.tight_layout()

plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[- Heuristics are fast but can be inaccurate 🐇❌]
#v(20pt)
#only("2-")[- Rational analysis is slower but more accurate 🐢✅]
#v(20pt)
#only("3-")[- Best approach: Use heuristics for speed, rational analysis for important decisions 🧠⚖️]

#only("1")[#voiceover("This graph compares heuristics and rational analysis on speed and accuracy. As you can see, heuristics are fast but can be inaccurate.")]
#only("2")[#voiceover("On the other hand, rational analysis, which involves careful consideration of all available information, is slower but tends to be more accurate.")]
#only("3")[#voiceover("The best approach is often to use heuristics for quick, less consequential decisions, and to employ rational analysis for more important decisions where accuracy is crucial.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Heuristics are mental shortcuts 🧠💨]
#v(20pt)
#only("2-")[- They can lead to biases in decision-making 📉]
#v(20pt)
#only("3-")[- Rational analysis is slower but more accurate 🐢✅]
#v(20pt)
#only("4-")[- Use heuristics for speed, rational analysis for accuracy 🧠⚖️]

#only("1")[#voiceover("To summarize, heuristics are mental shortcuts that we use to make decisions quickly.")]
#only("2")[#voiceover("However, relying too heavily on heuristics can lead to various biases in our decision-making.")]
#only("3")[#voiceover("Rational analysis, while slower, tends to lead to more accurate decisions.")]
#only("4")[#voiceover("The best approach is to use heuristics when speed is important and the consequences of a wrong decision are low, and to use rational analysis for more important decisions where accuracy is crucial.")]
]