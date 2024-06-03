#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
Behavioral finance studies how \_\_\_\_\_ factors affect financial decisions.
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) economic]#only("2-")[#text(fill:red)[a) economic]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) psychological]#only("3-")[#text(fill:green)[b) psychological]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) technical]#only("4-")[#text(fill:red)[c) technical]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) mathematical]#only("5-")[#text(fill:red)[d) mathematical]]
#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("Option a) economic is incorrect. While economic factors certainly influence financial decisions, behavioral finance focuses specifically on psychological factors.")]
#only("3")[#voiceover("Option b) psychological is indeed the correct answer. Behavioral finance studies how psychological factors like biases and emotions affect financial decisions and market outcomes.")]
#only("4")[#voiceover("Option c) technical is incorrect. Technical factors, such as market trends or chart patterns, are not the primary focus of behavioral finance.")]
#only("5")[#voiceover("Option d) mathematical is also incorrect. While mathematical models are used in finance, behavioral finance emphasizes the role of psychology rather than mathematics.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[- Behavioral finance is a field that combines insights from psychology and economics 🧠💰]
#v(20pt)
#only("2-")[- It studies how psychological factors influence the financial decisions of individuals and institutions 🤔📈]
#v(20pt)
#only("3-")[- These psychological factors include:
  - Biases (e.g., overconfidence, loss aversion) 🙅‍♂️]
#only("1")[#voiceover("Let's break down the answer step by step. Behavioral finance is a field that combines insights from psychology and economics.")]
#only("2")[#voiceover("It studies how psychological factors influence the financial decisions of individuals and institutions.")]
#only("3")[#voiceover("These psychological factors include biases like overconfidence and loss aversion.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution (cont.)]
#v(40pt)
#only("1-")[- These psychological factors include:
  - Emotions (e.g., fear, greed) 😨😋
  - Heuristics (mental shortcuts) 🧩]
#v(20pt)
#only("2-")[- By understanding these psychological influences, behavioral finance aims to explain market anomalies and improve financial decision-making 🎯]
#only("1")[#voiceover("These psychological factors also include emotions like fear and greed, and mental shortcuts known as heuristics.")]
#only("2")[#voiceover("By understanding these psychological influences, behavioral finance aims to explain market anomalies that traditional finance models can't account for, and to help improve financial decision-making. So, in summary, behavioral finance focuses on the psychological factors that drive financial behavior.")]
]