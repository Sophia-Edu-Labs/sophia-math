#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Representativeness Heuristic]
#v(40pt)
#only("1-")[- Judging probability based on resemblance 🎭]
#v(20pt)
#only("2-")[- Example: Linda the bank teller 👩‍💼]
#v(20pt)
#only("3-")[- Ignores base rates 📊]
#only("1")[
#voiceover("The representativeness heuristic is a mental shortcut where people judge the probability of an event based on how much it resembles or is representative of their stereotypes or prototypes, rather than considering actual probabilities.")
]
#only("2")[
#voiceover("A classic example is the 'Linda problem'. Given a description of Linda that matches a feminist stereotype, people often judge it more likely that Linda is a feminist bank teller than just a bank teller, even though the latter includes the former and must be more probable.")
]
#only("3")[
#voiceover("This heuristic often leads to neglecting base rates. In the Linda example, the base rate of bank tellers is much higher than that of feminist bank tellers, but this is ignored in favor of representativeness.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[How It Works]
#v(40pt)
#only("1-")[- Reliance on stereotypes 🧠]
#v(20pt)
#only("2-")[- Similarity substitution 🔄]
#v(20pt)
#only("3-")[- Insensitivity to sample size 📏]
#only("1")[
#voiceover("The representativeness heuristic works by relying on stereotypes or prototypes that are easily brought to mind. When faced with a probability judgment, people often answer an easier question instead: 'How similar is this to my stereotype?'")
]
#only("2")[
#voiceover("This substitution of similarity for probability is a key mechanism of the representativeness heuristic.")
]
#only("3")[
#voiceover("Another characteristic is insensitivity to sample size. People tend to judge the probability of a sample result by how closely it resembles the population, without considering the sample size. For example, judging the probability of getting 7 heads out of 10 coin flips as equal to getting 700 heads out of 1000 flips, because the proportion is similar.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Consequences]
#v(40pt)
#only("1-")[- Base rate neglect 🙈]
#v(20pt)
#only("2-")[- Conjunction fallacy 🧩]
#v(20pt)
#only("3-")[- Gambler's fallacy 🎲]
#only("1")[
#voiceover("The representativeness heuristic can lead to several fallacies and biases in probability judgments.")
]
#only("2")[
#voiceover("Base rate neglect, as seen in the Linda problem, occurs when the base rate or prior probability is ignored in favor of representativeness. The conjunction fallacy, also illustrated by the Linda problem, is when a conjunction of two events is judged more probable than one of the events alone.")
]
#only("3")[
#voiceover("The gambler's fallacy is another example, where people expect a sequence of independent events to be 'representative' of the overall probabilities. For instance, expecting a tail after a series of heads in coin flips, as if the coin has a memory and should balance out.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Judging probability by resemblance 🎭]
#v(20pt)
#only("2-")[- Relies on stereotypes, ignores base rates 🧠📊]
#v(20pt)
#only("3-")[- Leads to fallacies in probability judgments 🙈🧩🎲]
#only("1")[
#voiceover("In summary, the representativeness heuristic is the tendency to judge the probability of an event by how much it resembles our stereotypes or expectations.")
]
#only("2")[
#voiceover("It works by relying on these stereotypes and substituting similarity for probability, often ignoring important factors like base rates and sample size.")
]
#only("3")[
#voiceover("This can lead to various fallacies and biases in probability judgments, such as base rate neglect, the conjunction fallacy, and the gambler's fallacy. Being aware of this heuristic can help us make more rational probability assessments.")
]
]