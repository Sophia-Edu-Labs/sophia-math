#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Herd Behavior]
#v(40pt)
Exercise 2: How can herd behavior affect financial decisions?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) It leads to independent decision-making]#only("2-")[#text(fill:red)[a) It leads to independent decision-making]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) It leads to following the crowd]#only("3-")[#text(fill:green)[b) It leads to following the crowd]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) It has no effect]#only("4-")[#text(fill:red)[c) It has no effect]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) It improves rationality]#only("5-")[#text(fill:red)[d) It improves rationality]]
#only("1")[#voiceover("That's not quite right. Let's take a look at the correct solution.")]
#only("2")[#voiceover("Option a) is incorrect. Herd behavior does not lead to independent decision-making. In fact, it's the opposite - it leads to following the decisions of others.")]
#only("3")[#voiceover("Option b) is correct. Herd behavior is defined as the tendency to follow and mimic the actions of a larger group, often ignoring individual analysis. So it does lead to following the crowd.")]
#only("4")[#voiceover("Option c) is incorrect. Herd behavior does have an effect on financial decisions. It can lead to bubbles and crashes in financial markets as people follow the crowd.")]
#only("5")[#voiceover("Option d) is also incorrect. Herd behavior does not improve rationality. It can lead to irrational decisions as people ignore their own analysis and follow others.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Herd Behavior Explained]
#v(40pt)
- Tendency to follow and mimic the actions of a larger group 🐑
#v(20pt)
- Often ignoring individual analysis 🙈
#v(20pt)
- Can lead to bubbles and crashes in financial markets 📈📉
#v(20pt)
- Example: Dotcom bubble of the late 1990s 💻
#only("1")[#voiceover("Let's break down herd behavior a bit more. Herd behavior is the tendency for individuals to follow and mimic the actions of a larger group.")]
#only("2")[#voiceover("This often happens even when it means ignoring their own individual analysis. People start to think, 'if everyone else is doing it, it must be right'.")]
#only("3")[#voiceover("In financial markets, this can lead to bubbles as everyone rushes to buy an asset, driving the price up. But it can also lead to crashes when the herd suddenly changes direction and starts selling.")]
#only("4")[#voiceover("A classic example is the dotcom bubble of the late 1990s. Investors piled into internet stocks, often with little understanding of the companies, simply because everyone else was doing it. When the bubble eventually burst, many investors suffered significant losses.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Herd Behavior Visualization]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Simulate a simple herd behavior model
def herd_model(n, threshold, p_initial):
    opinions = np.random.choice([0, 1], size=n, p=[1-p_initial, p_initial])
    for _ in range(10):  # Simulate 10 rounds
        for i in range(n):
            if np.random.rand() < threshold:
                opinions[i] = np.random.choice(opinions)
    return opinions

n = 1000
threshold = 0.3
p_initial = 0.2

opinions = herd_model(n, threshold, p_initial)

plt.figure(figsize=(8, 4))
plt.hist(opinions, bins=[-0.5, 0.5, 1.5], rwidth=0.8)
plt.xticks([0, 1], ['Opinion 0', 'Opinion 1'])
plt.ylabel('Number of Individuals')
plt.title('Herd Behavior Simulation')
plt.annotate(f'{np.mean(opinions):.2%} followed the herd', 
             xy=(0.7, 200), xytext=(0.7, 300), 
             arrowprops=dict(facecolor='black', shrink=0.05))

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's a simulation of herd behavior:]
#v(20pt)
#only("2-")[- Each individual starts with their own opinion (0 or 1) 🧑‍🤝‍🧑]
#only("3-")[- In each round, some individuals follow the herd 🐑]
#only("4-")[- After several rounds, a significant majority follows the herd 📊]

#only("1")[#voiceover("Let's look at a simple simulation of herd behavior. In this model, we have a thousand individuals, each starting with their own opinion, represented as 0 or 1.")]
#only("2")[#voiceover("At the start, opinions are distributed based on an initial probability. Here, 20% start with opinion 1.")]
#only("3")[#voiceover("In each round of the simulation, each individual has a 30% chance of abandoning their own opinion and instead adopting the opinion of a random other individual. This represents the 'herd following' behavior.")]
#only("4")[#voiceover("After several rounds, we see a significant majority - in this case, about 80% - following the herd. This demonstrates how herd behavior can lead to a convergence of opinions or actions, even if those actions are not necessarily rational or optimal for each individual.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
- Herd behavior is the tendency to follow the crowd 🐑
#v(20pt)
- It can lead to irrational financial decisions 📉
#v(20pt)
- It's important to be aware of and resist herd mentality 🧠
#v(20pt)
- Always do your own research and analysis 📚

#only("1")[#voiceover("In summary, herd behavior is the tendency for individuals to follow and mimic the actions of a larger group.")]
#only("2")[#voiceover("In financial markets, this can lead to irrational decisions and contribute to bubbles and crashes.")]
#only("3")[#voiceover("As an investor, it's important to be aware of herd mentality and to actively resist it. Just because everyone else is doing something doesn't mean it's the right thing to do.")]
#only("4")[#voiceover("Always do your own research and analysis, and make decisions based on your own financial goals and risk tolerance. Don't just follow the herd.")]
]