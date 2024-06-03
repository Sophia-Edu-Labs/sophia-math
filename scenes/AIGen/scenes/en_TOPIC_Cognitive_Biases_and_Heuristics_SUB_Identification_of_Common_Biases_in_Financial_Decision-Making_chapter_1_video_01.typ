#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Let's talk about overconfidence bias in financial decision-making.")]
#text(size: 30pt, weight: "bold")[Overconfidence Bias]
// The title "Overconfidence Bias" is shown on all slides
#v(40pt)
#only("2-")[- 🧠 Overestimating one's own abilities]
// The point "Overestimating one's own abilities" is shown from slide 2 onward
#v(20pt)
#only("3-")[- 💰 Leads to excessive risk-taking in financial decisions]
// The point "Leads to excessive risk-taking in financial decisions" is shown from slide 3 onward
#v(40pt)
#only("4-")[#text(size: 30pt, weight: "bold")[Examples]]
// The title "Examples" is shown from slide 4 onward
#v(40pt)
#only("5-")[- 📈 Overtrading due to perceived market insights]
// The example "Overtrading due to perceived market insights" is shown from slide 5 onward
#v(20pt)
#only("6-")[- 🎲 Taking on too much financial risk]
// The example "Taking on too much financial risk" is shown from slide 6 onward
#only("2")[
#voiceover("Overconfidence bias is a cognitive bias where individuals overestimate their own abilities, knowledge, or chances of success.")
]
#only("3")[
#voiceover("In the context of financial decision-making, this bias can lead to excessive risk-taking.")
]
#only("4")[
#voiceover("Let's look at a couple of examples of how overconfidence bias can manifest in financial decisions.")
]
#only("5")[
#voiceover("One example is overtrading. An overconfident investor might believe they have superior insights into the market and make frequent trades based on this belief, often incurring high transaction costs and potentially missing out on long-term gains.")
]
#only("6")[
#voiceover("Another example is taking on too much financial risk. An overconfident individual might invest in high-risk, high-return assets, believing they can handle the risk. However, this can lead to significant losses if the investments don't pan out as expected.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence Bias in Action]
// The title "Overconfidence Bias in Action" is shown on this slide
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
x = np.arange(1, 6)
perceived_ability = [4, 4.5, 5, 5.5, 6]
actual_ability = [2, 2.5, 3, 3.5, 4]

# Create plot
plt.figure(figsize=(8, 6))
plt.plot(x, perceived_ability, marker='o', linestyle='-', color='r', label='Perceived Ability')
plt.plot(x, actual_ability, marker='s', linestyle='-', color='b', label='Actual Ability')
plt.xlabel('Time')
plt.ylabel('Ability Level')
plt.title('Overconfidence Bias: Perceived vs. Actual Ability')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
// The graph illustrating overconfidence bias is shown from slide 1 onward
#only("1")[
#voiceover("This graph illustrates how overconfidence bias can manifest over time. The red line represents an individual's perceived ability, while the blue line represents their actual ability.")
]
#only("2")[
#voiceover("As you can see, the perceived ability consistently exceeds the actual ability. This gap represents the degree of overconfidence.")
]
#only("3")[
#voiceover("In a financial context, this overconfidence could lead the individual to make risky decisions, believing they have a higher ability to succeed than they actually do.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mitigating Overconfidence Bias]
#v(40pt)
#only("1-")[- 🤔 Be aware of the bias]
#v(20pt)
#only("2-")[- 📚 Seek out diverse information and opinions]
#v(20pt)
#only("3-")[- 📏 Use objective benchmarks to evaluate performance]
#only("1")[
#voiceover("To mitigate overconfidence bias in financial decision-making, the first step is to be aware that the bias exists and that we're all susceptible to it.")
]
#only("2")[
#voiceover("It's also important to seek out diverse information and opinions, rather than just relying on our own beliefs. This can help provide a more balanced perspective.")
]
#only("3")[
#voiceover("Finally, using objective benchmarks to evaluate our performance can help ground our perceptions in reality. For example, comparing investment returns to a relevant market index.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- 🧠 Overconfidence bias: overestimating one's abilities]
#v(20pt)
#only("2-")[- 💰 Leads to excessive risk-taking in financial decisions]
#v(20pt)
#only("3-")[- 🤔 Be aware, seek diverse opinions, use benchmarks]
#only("1")[
#voiceover("In summary, overconfidence bias is the tendency to overestimate our own abilities, knowledge, or chances of success.")
]
#only("2")[
#voiceover("In financial decision-making, this bias can lead to excessive risk-taking, such as overtrading or investing in high-risk assets.")
]
#only("3")[
#voiceover("To mitigate the bias, we should be aware of it, seek out diverse information and opinions, and use objective benchmarks to evaluate our performance.")
]
]