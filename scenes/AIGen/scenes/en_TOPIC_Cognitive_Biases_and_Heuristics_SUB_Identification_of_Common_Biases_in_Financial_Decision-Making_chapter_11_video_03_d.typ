#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Cognitive Biases in Financial Decisions]
#v(40pt)
How do cognitive biases generally affect financial decisions?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) They improve accuracy]#only("2-")[#text(fill:red)[a) They improve accuracy]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) They cause systematic errors]#only("3-")[#text(fill:green)[b) They cause systematic errors]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) They have no effect]#only("4-")[#text(fill:red)[c) They have no effect]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) They enhance rationality]#only("5-")[#text(fill:red)[d) They enhance rationality]]
#only("1")[#voiceover("Not quite. Let's review the correct solution.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[Cognitive biases lead to systematic errors in financial decisions because:]
#v(20pt)
#only("2-")[- They are deviations from rationality 🧠]
#v(10pt)
#only("3-")[- They affect judgment consistently and predictably 📊]
#v(10pt)
#only("4-")[- Examples: overconfidence, confirmation bias, loss aversion 📉]
#v(10pt)
#only("5-")[So, they #text(weight: "bold")[do not] improve accuracy or enhance rationality, but rather introduce errors.]
#only("1")[#voiceover("Cognitive biases lead to systematic errors in financial decisions for several reasons.")]
#only("2")[#voiceover("First, cognitive biases are deviations from rationality. They cause us to think and decide in ways that are not fully logical or rational.")]
#only("3")[#voiceover("Second, these biases affect our judgment consistently and predictably. They are not random errors, but systematic ones.")]
#only("4")[#voiceover("Examples of cognitive biases that can lead to errors in financial decisions include overconfidence, where we overestimate our abilities; confirmation bias, where we seek information that confirms our preconceptions; and loss aversion, where we feel the pain of losses more than the pleasure of equivalent gains.")]
#only("5")[#voiceover("Because of these characteristics, cognitive biases do not improve accuracy or enhance rationality in financial decisions. Instead, they introduce systematic errors that can lead to suboptimal choices.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Impact of Cognitive Biases]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
categories = ['Overconfidence', 'Confirmation Bias', 'Loss Aversion', 'Anchoring', 'Herd Behavior']
impact = [4, 3, 5, 3, 4]
colors = ['#ff9999','#66b3ff','#99ff99','#ffcc99', '#c2c2f0']
fig, ax = plt.subplots(figsize=(12, 6))
ax.bar(categories, impact, color=colors)
ax.set_ylabel('Impact on Financial Decisions (1-5)', fontsize=14)
ax.set_xlabel('Cognitive Bias', fontsize=14)
ax.set_title('Impact of Cognitive Biases on Financial Decisions', fontsize=20)
for tick in ax.get_xticklabels():
    tick.set_rotation(45)
plt.show()
```,
width: 480pt),
)
]
]
#v(40pt)
#only("2-")[- The higher the bar, the greater the impact 📏]
#v(10pt)
#only("3-")[- Loss aversion has the highest impact 📈]
#v(10pt)
#only("4-")[- Overconfidence and herd behavior also rank high 🐑]
#only("1")[#voiceover("Let's visualize the impact of some common cognitive biases on financial decisions.")]
#only("2")[#voiceover("In this graph, the height of each bar represents the severity of impact of the bias, on a scale from 1 to 5. The higher the bar, the greater the impact of that bias tends to be.")]
#only("3")[#voiceover("We can see that loss aversion has the highest impact. This makes sense, as the fear of losses can significantly distort our financial choices.")]
#only("4")[#voiceover("Overconfidence and herd behavior also rank high in their impact. Overconfidence can lead to excessive risk-taking, while herd behavior can cause us to follow the crowd, even when it's not rational.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Cognitive biases are systematic deviations from rationality 🧩]
#v(10pt)
#only("2-")[- They lead to predictable errors in financial decisions 📉]
#v(10pt)
#only("3-")[- They do not improve accuracy or rationality 🎯]
#v(10pt)
#only("4-")[- Being aware of these biases can help mitigate their impact 🧘]
#only("1")[#voiceover("To summarize, cognitive biases are systematic deviations from rationality.")]
#only("2")[#voiceover("They lead to predictable errors in our financial decisions.")]
#only("3")[#voiceover("Contrary to what we might wish, they do not improve the accuracy or rationality of our choices.")]
#only("4")[#voiceover("However, by being aware of these biases and how they operate, we can work to mitigate their impact on our financial decisions. It's an important step towards making more rational and beneficial choices with our money.")]
]