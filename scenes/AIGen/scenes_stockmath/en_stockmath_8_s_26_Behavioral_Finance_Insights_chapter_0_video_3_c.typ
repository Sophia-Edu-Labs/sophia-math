#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance]
#v(40pt)
#only("1-")[Which of the following is a key focus of Behavioral Finance?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Interest rates]#only("2-")[#text(fill:red)[a) Interest rates]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Psychological biases]#only("3-")[#text(fill:green)[b) Psychological biases]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Corporate law]#only("4-")[#text(fill:red)[c) Corporate law]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Banking systems]#only("5-")[#text(fill:red)[d) Banking systems]]
#only("1")[#voiceover("That's not quite right, but let's take a look at the correct solution.")]
#only("2")[#voiceover("a) Interest rates is incorrect. While interest rates are an important aspect of finance, they are not the primary focus of behavioral finance.")]
#only("3")[#voiceover("b) Psychological biases is the correct answer. Behavioral finance studies how psychological factors influence investor behavior and market outcomes. 🧠")]
#only("4")[#voiceover("c) Corporate law is not the main focus of behavioral finance. Corporate law deals with the formation and operations of corporations.")]  
#only("5")[#voiceover("d) Banking systems is also incorrect. While banks are important financial institutions, they are not the central topic of behavioral finance.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Concepts]
#v(40pt)  
#only("1-")[Behavioral finance focuses on:]
#v(20pt)
#only("2-")[- Psychological factors 🧠]
#only("3-")[- Investor behavior 📈]
#only("4-")[- Market anomalies 📊]

#only("1")[#voiceover("Let's review some key concepts of behavioral finance.")]
#only("2")[#voiceover("Behavioral finance emphasizes the role of psychological factors in financial decision-making. This includes biases, heuristics, and emotions.")]
#only("3")[#voiceover("It studies how these psychological factors influence the behavior of investors, such as their risk tolerance, trading patterns, and reactions to market movements.")]
#only("4")[#voiceover("Behavioral finance also seeks to explain market anomalies that cannot be accounted for by traditional financial theories, such as market bubbles and crashes.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Examples of Biases]
#v(40pt)
#only("1-")[
- Overconfidence bias 😎
]
#v(10pt)  
#only("2-")[
- Confirmation bias 🔍
]
#v(10pt)
#only("3-")[  
- Loss aversion 📉
]
#v(10pt)
#only("4-")[
- Herd mentality 🐑
]

#only("1")[#voiceover("Some common psychological biases studied in behavioral finance include overconfidence bias, where investors overestimate their abilities and knowledge.")]
#only("2")[#voiceover("Confirmation bias, where people seek out information that confirms their existing beliefs and ignore contradictory evidence.")]
#only("3")[#voiceover("Loss aversion, the tendency to feel the pain of losses more intensely than the pleasure of gains.")]
#only("4")[#voiceover("And herd mentality, where investors follow the crowd, leading to market trends and bubbles.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Behavioral finance: study of psychological factors in finance 🧠💰]
#v(20pt)  
#only("2-")[- Focuses on investor behavior and market anomalies 📈📊]
#v(20pt)
#only("3-")[- Incorporates insights from psychology and sociology 🎓]
#v(20pt)
#only("4-")[- Challenges traditional assumptions of rationality 🤔]

#only("1")[#voiceover("In summary, behavioral finance is the study of how psychological factors influence financial decision-making and market outcomes.")]
#only("2")[#voiceover("It focuses on understanding investor behavior and explaining market anomalies that deviate from traditional financial models.")]  
#only("3")[#voiceover("Behavioral finance draws insights from psychology, sociology, and other social sciences to enrich our understanding of financial markets.")]
#only("4")[#voiceover("It challenges the traditional assumption of perfect rationality in finance and provides a more realistic perspective on how people make financial decisions.")]
]