#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Real-World Applications]
#v(40pt)
Which of the following is a real-world application of Behavioral Finance?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) Investment strategies]#only("2-")[#text(fill:green)[a) Investment strategies]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Predicting stock prices]#only("3-")[#text(fill:red)[b) Predicting stock prices]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Calculating interest rates]#only("4-")[#text(fill:red)[c) Calculating interest rates]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Analyzing market competition]#only("5-")[#text(fill:red)[d) Analyzing market competition]]
#v(40pt)

#only("1")[#voiceover("Great job! You've selected the correct answer.")]
// Very briefly Talk about a and why it is correct
#only("2")[#voiceover("a) Investment strategies is indeed a real-world application of Behavioral Finance. Behavioral Finance insights can be used to develop investment strategies that account for investor biases and irrational behavior.")]
// Very briefly Talk about b and why it is incorrect
#only("3")[#voiceover("b) Predicting stock prices is not a direct application of Behavioral Finance. While Behavioral Finance can help understand market anomalies, it does not aim to predict specific stock prices.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("c) Calculating interest rates is not a typical application of Behavioral Finance. Interest rates are more related to monetary policy and economic factors.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("d) Analyzing market competition is not a primary focus of Behavioral Finance. Behavioral Finance mainly looks at the behavior of investors and financial markets, not the competitive dynamics between firms.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Real-World Applications]
#v(40pt)
#only("1-")[Here are some examples of how Behavioral Finance is applied in the real world:]
#v(20pt)
#only("2-")[- Designing investment products 📈]
#only("3-")[- Financial planning and advice 🗓️]
#only("4-")[- Developing financial regulations 📜]
#only("5-")[- Improving corporate decision-making 🏢]

#only("1")[#voiceover("Let's look at some specific examples of how Behavioral Finance is applied in the real world.")]
#only("2")[#voiceover("Investment firms use Behavioral Finance insights to design investment products that cater to or exploit investor biases.")]
#only("3")[#voiceover("Financial planners and advisors consider Behavioral Finance principles when giving advice to clients, to help them make more rational decisions.")]
#only("4")[#voiceover("Policymakers and regulators draw on Behavioral Finance research when developing financial regulations, to protect investors from their own biases.")]
#only("5")[#voiceover("Corporations can use Behavioral Finance knowledge to improve their financial decision-making and avoid biases in budgeting, investing, and other areas.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Behavioral Finance has many real-world applications 🌍]
#v(20pt)
#only("2-")[- Investment strategies are a key application 📈]
#v(20pt)
#only("3-")[- It's used in financial planning, regulation, and corporate decisions 🗓️📜🏢]
#v(20pt)
#only("4-")[- Understanding investor behavior is crucial for these applications 🧠]

#only("1")[#voiceover("To summarize, Behavioral Finance has numerous real-world applications.")]
#only("2")[#voiceover("One of the most prominent is in the development of investment strategies that account for investor biases.")]
#only("3")[#voiceover("It's also used in financial planning, in developing financial regulations, and in improving corporate financial decision-making.")]
#only("4")[#voiceover("At the core of all these applications is the need to understand and account for how investors actually behave, which is often irrational and biased. That's the key insight of Behavioral Finance.")]
]