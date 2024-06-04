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
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) They improve accuracy]#only("2-")[#text(fill:red)[a) They improve accuracy]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) They cause systematic errors]#only("3-")[#text(fill:green)[b) They cause systematic errors]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) They have no effect]#only("4-")[#text(fill:red)[c) They have no effect]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) They enhance rationality]#only("5-")[#text(fill:red)[d) They enhance rationality]]
#only("1")[#voiceover("Great job! You've selected the correct answer. Let's understand why...")]
#only("2")[#voiceover("Option a) is incorrect. Cognitive biases do not improve accuracy. In fact, they lead to systematic deviations from rational judgment.")]
#only("3")[#voiceover("Option b) is the correct answer. Cognitive biases indeed cause systematic errors in financial decision-making. They lead to predictable patterns of irrational behavior.")]
#only("4")[#voiceover("Option c) is incorrect. Cognitive biases do not have 'no effect'. They significantly influence our financial decisions, often leading to suboptimal choices.")]
#only("5")[#voiceover("Option d) is also incorrect. Cognitive biases do not enhance rationality. On the contrary, they cause deviations from rational, logical thought processes.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Systematic Errors caused by Cognitive Biases]
#v(40pt)
#only("1-")[Examples of systematic errors caused by cognitive biases in financial decisions:]
#v(20pt)
#only("2-")[- Overconfidence bias 🦸‍♂️ → Excessive risk-taking]
#only("3-")[- Loss aversion 📉 → Holding onto losing investments]
#only("4-")[- Herd behavior 🐑 → Following the crowd, ignoring own analysis]
#only("5-")[- Recency bias 🆕 → Overemphasis on recent events]
#only("6-")[- Sunk cost fallacy 💸 → Continuing unprofitable investments]
#only("1")[#voiceover("Cognitive biases lead to various types of systematic errors in financial decision-making. Let's look at some examples...")]
#only("2")[#voiceover("Overconfidence bias can lead to excessive risk-taking. When people overestimate their abilities, they may take on more risk than is warranted.")]
#only("3")[#voiceover("Loss aversion can cause people to hold onto losing investments for too long, hoping to avoid realizing a loss.")]
#only("4")[#voiceover("Herd behavior can lead to following the crowd, even when one's own analysis suggests a different course of action.")]
#only("5")[#voiceover("Recency bias can cause an overemphasis on recent events, leading to decisions based on short-term trends rather than long-term fundamentals.")]
#only("6")[#voiceover("The sunk cost fallacy can lead to continuing unprofitable investments, because people are reluctant to admit that past costs were wasted.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Deviations from Rationality]
#v(40pt)
#only("1-")[Cognitive biases cause deviations from rationality in judgment and decision-making.]
#v(20pt)
#only("2-")[#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate data
x = np.linspace(0, 10, 100)
rational_decision = 5 * np.ones_like(x)
biased_decision = 5 + 2 * np.sin(x)

# Create plot
plt.figure(figsize=(8, 6))
plt.plot(x, rational_decision, color='blue', linestyle='--', label='Rational Decision')
plt.plot(x, biased_decision, color='red', label='Biased Decision')
plt.xlabel('Situation')
plt.ylabel('Decision')
plt.title('Deviations from Rationality due to Cognitive Biases')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]]
#only("1")[#voiceover("In essence, cognitive biases cause systematic deviations from rationality in judgment and decision-making.")]
#only("2")[#voiceover("As illustrated in this graph, while a rational decision (shown in blue) would remain consistent across different situations, a biased decision (in red) deviates from the rational choice in a systematic way, influenced by cognitive biases rather than objective facts.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Cognitive biases cause systematic errors in financial decisions 📊]
#v(20pt)
#only("2-")[- They lead to deviations from rationality and logic 🧠]
#v(20pt)
#only("3-")[- Examples: overconfidence, loss aversion, herd behavior, recency bias, sunk cost fallacy 📚]
#v(20pt)
#only("4-")[- Biases affect decisions in predictable ways, causing suboptimal choices 🎯]
#only("1")[#voiceover("To summarize, cognitive biases cause systematic errors in financial decisions.")]
#only("2")[#voiceover("They lead to deviations from rationality and logic in judgment and decision-making.")]
#only("3")[#voiceover("Examples of cognitive biases include overconfidence, loss aversion, herd behavior, recency bias, and the sunk cost fallacy.")]
#only("4")[#voiceover("These biases affect decisions in predictable ways, often leading to suboptimal choices. Being aware of these biases can help improve financial decision-making.")]
]