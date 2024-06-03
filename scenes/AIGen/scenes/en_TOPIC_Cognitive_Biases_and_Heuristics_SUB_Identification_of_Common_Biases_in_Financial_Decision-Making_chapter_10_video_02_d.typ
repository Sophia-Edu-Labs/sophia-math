#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Representativeness Heuristic]
#v(40pt)
What is the representativeness heuristic?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) Judging probability based on resemblance]#only("2-")[#text(fill:green)[a) Judging probability based on resemblance]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Judging probability based on statistical data]#only("3-")[#text(fill:red)[b) Judging probability based on statistical data]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Ignoring similarities]#only("4-")[#text(fill:red)[c) Ignoring similarities]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]
#v(40pt)

#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
// Very briefly Talk about a and why it is correct
#only("2")[#voiceover("a) Judging probability based on resemblance is indeed the correct definition of the representativeness heuristic. This heuristic involves judging the probability of an event by how much it resembles other events.")]
// Very briefly Talk about b and why it is incorrect
#only("3")[#voiceover("b) Judging probability based on statistical data is incorrect. This would actually be a more rational approach, not a heuristic bias.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("c) Ignoring similarities is also incorrect. The representativeness heuristic actually relies on perceived similarities, rather than ignoring them.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And d) None of the above is incorrect, since option a) correctly defines the representativeness heuristic.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Representativeness Heuristic]
#v(40pt)
#only("1-")[Definition: Judging the probability of an event by how much it resembles other events 🎭]
#v(20pt)
#only("2-")[Example: Assuming someone is a librarian because they resemble the stereotype of a librarian 📚]
#v(20pt)
#only("3-")[Problem: Ignores base rates and leads to biased judgments 🙈]
#v(20pt)
#only("4-")[Importance: Affects many real-world decisions, including financial ones 💰]

#only("1")[#voiceover("The representativeness heuristic is a cognitive bias where people judge the probability of an event by how much it is 'representative' of, or resembles, other events.")]
#only("2")[#voiceover("For instance, if someone matches our mental image of a librarian, we might assume they are a librarian, even if there are many other possibilities that are more probable given the base rates.")]
#only("3")[#voiceover("This is problematic because it leads us to ignore important statistical information and can result in biased judgments.")]
#only("4")[#voiceover("Understanding the representativeness heuristic is important because it can affect many real-world decisions, including financial ones. For example, investors might judge a company as a good investment if it resembles their idea of a successful company, even if the actual financial data suggests otherwise.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Representativeness in Finance]
#v(40pt)
#only("1-")[Investors may overestimate the potential of 'representative' investments 📈]
#v(20pt)
#only("2-")[Example: Assuming a company will succeed because it resembles a previously successful company 🏢]
#v(20pt)
#only("3-")[Investors may underestimate risks that are not 'representative' ⚠]
#v(20pt)
#only("4-")[Example: Discounting the possibility of a 'black swan' event because it seems unfamiliar 🦢]

#only("1")[#voiceover("In the context of finance, the representativeness heuristic can lead investors to overestimate the potential of investments that seem representative of success.")]
#only("2")[#voiceover("For example, if a new tech startup resembles the early days of Apple or Google, investors might assume it will be similarly successful, without fully analyzing its actual business model and market conditions.")]
#only("3")[#voiceover("On the flip side, investors may also underestimate risks that do not seem representative or familiar.")]
#only("4")[#voiceover("For instance, they might discount the possibility of a rare but catastrophic 'black swan' event, because it doesn't fit their mental model of what normally happens in the markets.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Countering Representativeness]
#v(40pt)
#only("1-")[Be aware of your biases 🧠]
#v(20pt)
#only("2-")[Look for counter-examples to your assumptions 🔍]
#v(20pt)  
#only("3-")[Base judgments on data and statistical thinking 📊]
#v(20pt)
#only("4-")[Consider alternative scenarios and outcomes 🌈]

#only("1")[#voiceover("To counter the representativeness heuristic, the first step is to be aware of your own biases. Recognize when you might be making judgments based on resemblance rather than facts.")]
#only("2")[#voiceover("Actively look for counter-examples that challenge your assumptions. If a company seems successful, consider ways in which it might differ from truly successful companies.")]
#only("3")[#voiceover("Base your judgments on data and statistical thinking as much as possible. Look at the actual numbers and probabilities involved, rather than relying on mental shortcuts.")]
#only("4")[#voiceover("Finally, always consider alternative scenarios and outcomes. Don't just focus on what seems most representative or likely based on past experiences. By keeping these strategies in mind, you can make more rational and unbiased financial decisions.")]
]