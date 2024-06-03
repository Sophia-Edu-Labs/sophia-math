#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Representativeness Heuristic]
#v(40pt)
#only("1-")[How can the representativeness heuristic affect financial decisions?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) It leads to accurate probability assessment]#only("2-")[#text(fill:red)[a) It leads to accurate probability assessment]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) It leads to ignoring base rates]#only("3-")[#text(fill:green)[b) It leads to ignoring base rates]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) It has no effect]#only("4-")[#text(fill:red)[c) It has no effect]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) It improves rationality]#only("5-")[#text(fill:red)[d) It improves rationality]]
#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("Option a) is incorrect. The representativeness heuristic does not lead to accurate probability assessments. In fact, it often leads to errors in judgment.")]
#only("3")[#voiceover("Option b) is correct. The representativeness heuristic can lead to ignoring base rates, which are the overall frequency of an event in a population.")]
#only("4")[#voiceover("Option c) is incorrect. The representativeness heuristic does have an effect on financial decisions, often leading to biases and errors.")]
#only("5")[#voiceover("Option d) is also incorrect. Rather than improving rationality, the representativeness heuristic can lead to less rational decisions.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Representativeness Heuristic]
#v(40pt)
#only("1-")[- Judging probability based on resemblance 🎭]
#v(20pt)
#only("2-")[- Example: Assuming a well-dressed man is a businessman 👔]
#v(20pt)
#only("3-")[- Ignores base rates (overall frequency) 📊]
#v(20pt)
#only("4-")[- Can lead to overestimating unlikely events 📈]

#only("1")[#voiceover("Let's break this down. The representativeness heuristic is the tendency to judge the probability of an event by how much it resembles other events.")]
#only("2")[#voiceover("For example, if we see a well-dressed man, we might assume he's a businessman because he resembles our stereotype of a businessman.")]
#only("3")[#voiceover("In doing so, we often ignore base rates, which are the overall frequency of an event in a population. Maybe businessmen are actually quite rare in the overall population.")]
#only("4")[#voiceover("This can lead us to overestimate the likelihood of unlikely events if they resemble our mental model.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Effect on Financial Decisions]
#v(40pt)
#only("1-")[- Overestimating the likelihood of "representative" investments 📊]
#v(20pt)
#only("2-")[- Example: Assuming a company with recent growth will continue to grow 📈]
#v(20pt)
#only("3-")[- Ignoring overall market trends and probabilities 📉]
#v(20pt)
#only("4-")[- Can lead to poor investment decisions 💸]

#only("1")[#voiceover("In financial decisions, the representativeness heuristic can lead us to overestimate the likelihood of investments that seem representative of a good investment.")]
#only("2")[#voiceover("For instance, if a company has had recent growth, we might assume it will continue to grow, because that's what we associate with successful companies.")]
#only("3")[#voiceover("But in doing so, we might ignore overall market trends and the actual probability of continued growth.")]
#only("4")[#voiceover("This can lead to poor investment decisions based on faulty assumptions rather than a rational assessment of probabilities.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Representativeness heuristic: judging probability based on resemblance 🎭]
#v(20pt)
#only("2-")[- Leads to ignoring base rates (overall frequencies) 📊]
#v(20pt)
#only("3-")[- Can cause overestimation of unlikely events 📈]
#v(20pt)
#only("4-")[- May lead to poor financial decisions based on faulty assumptions 💸]

#only("1")[#voiceover("To sum up, the representativeness heuristic is judging the probability of an event based on how much it resembles our expectations or stereotypes.")]
#only("2")[#voiceover("It leads us to ignore base rates, which are the actual frequencies of events in a population.")]
#only("3")[#voiceover("This can cause us to overestimate the likelihood of events that seem representative but are actually unlikely.")]
#only("4")[#voiceover("In financial decisions, this may lead to poor choices based on faulty assumptions rather than a rational assessment of probabilities.")]
]