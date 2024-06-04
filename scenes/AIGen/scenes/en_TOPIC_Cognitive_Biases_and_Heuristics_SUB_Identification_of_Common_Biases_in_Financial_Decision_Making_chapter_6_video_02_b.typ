#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Recency Bias]
#v(40pt)
#only("1-")[What is recency bias?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Weighing all events equally]#only("2-")[#text(fill:red)[a) Weighing all events equally]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Weighing recent events more heavily]#only("3-")[#text(fill:green)[b) Weighing recent events more heavily]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Ignoring recent events]#only("4-")[#text(fill:red)[c) Ignoring recent events]]
#v(10pt)  
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]

#only("1")[#voiceover("That's right, great job!")]
// Very briefly Talk about a and why it is incorrect
#only("2")[#voiceover("a) Weighing all events equally is incorrect. Recency bias does not give equal weight to all events.")]
// Very briefly Talk about b and why it is correct  
#only("3")[#voiceover("b) Weighing recent events more heavily is the correct answer. Recency bias is the tendency to give more importance to events that happened recently compared to those in the past.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("c) Ignoring recent events is also incorrect. Recency bias does the opposite - it focuses more on recent events.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And d) None of the above is incorrect because one of the options, b), is the correct definition of recency bias.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recency Bias Explained]
#v(40pt)  
#only("1-")[- Cognitive bias 🧠]
#v(20pt)
#only("2-")[- More weight to recent events 📆]
#v(20pt)  
#only("3-")[- Less weight to past events 📅]
#v(20pt)
#only("4-")[- Can lead to errors in judgment ⚠️]

#only("1")[#voiceover("Recency bias is a type of cognitive bias that affects our decision making.")]
#only("2")[#voiceover("It makes us give more weight or importance to events that happened recently.")]
#only("3")[#voiceover("At the same time, we tend to give less weight to events that happened further in the past.")]  
#only("4")[#voiceover("This bias can lead to errors in judgment, as we might overemphasize recent information and underemphasize older but potentially still relevant information.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example in Financial Decision-Making 💰]
#v(40pt)
#only("1-")[- Investor considers recent stock performance 📈]
#v(20pt)  
#only("2-")[- Neglects long-term trends 📉]
#v(20pt)
#only("3-")[- Might make suboptimal investment decisions 🙅‍♂️]

#only("1")[#voiceover("For example, in financial decision-making, an investor might consider the recent performance of a stock more heavily than its long-term performance.")]
#only("2")[#voiceover("They might neglect to consider the overall trends and fundamentals of the company.")]
#only("3")[#voiceover("This could lead to suboptimal investment decisions, like buying a stock just because it has done well recently, even if its long-term prospects are not good.")]
]

#slide()[  
#text(size: 30pt, weight: "bold")[Countering Recency Bias]
#v(40pt)
#only("1-")[- Be aware of the bias 🧐]
#v(20pt)
#only("2-")[- Consider all relevant information 📊]
#v(20pt)  
#only("3-")[- Weigh information based on its predictive value 🔮]
#v(20pt)
#only("4-")[- Make decisions based on a broad perspective 🌍]

#only("1")[#voiceover("To counter recency bias, the first step is to be aware that this bias exists and can influence your decisions.")]
#only("2")[#voiceover("When making decisions, try to consider all relevant information, not just what happened recently.")]
#only("3")[#voiceover("Weigh each piece of information based on its actual predictive value for the decision at hand, not based on when it occurred.")]
#only("4")[#voiceover("Aim to make decisions based on a broad, long-term perspective, rather than being swayed by recent events. By keeping these points in mind, you can minimize the impact of recency bias on your financial decisions.")]
]