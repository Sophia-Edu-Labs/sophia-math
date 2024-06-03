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
#only("1")[#voiceover("Not quite, but don't worry. Let's see the correct solution.")]
#only("2")[#voiceover("Option a), weighing all events equally, is incorrect. Recency bias actually involves giving more weight to recent events.")]
#only("3")[#voiceover("Option b), weighing recent events more heavily, is the correct definition of recency bias. Well done for selecting this!")]
#only("4")[#voiceover("Option c), ignoring recent events, is the opposite of recency bias. Recency bias involves focusing more on recent events, not ignoring them.")]
#only("5")[#voiceover("And option d), none of the above, is also incorrect, since option b) correctly defines recency bias.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example of Recency Bias 📈]
#v(40pt)
#only("1-")[Imagine an investor who sees that a stock has performed well over the last month.]
#v(20pt)
#only("2-")[Due to recency bias, they may overweight this short-term performance and decide to buy the stock...] 
#v(20pt)
#only("3-")[...even if the stock's long-term prospects are not good. 📉]
#v(40pt)
#only("4-")[This is an example of recency bias leading to a potentially poor investment decision. 💸]

#only("1")[#voiceover("Let's look at an example to illustrate recency bias.")]
#only("2")[#voiceover("If an investor sees a stock performing well over the last month, they may give too much importance to this recent performance due to recency bias.")]
#only("3")[#voiceover("This could lead them to buy the stock, even if the stock's long-term outlook is not favorable.")]
#only("4")[#voiceover("In this case, recency bias has caused the investor to make a decision based disproportionately on recent events, potentially leading to a poor investment choice.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Avoiding Recency Bias 🎯]
#v(40pt)
#only("1-")[- Consider a longer time horizon 📆]
#v(20pt)
#only("2-")[- Seek out contradictory information 🔍]
#v(20pt) 
#only("3-")[- Be aware of your biases 🧠]
#v(20pt)
#only("4-")[By taking these steps, investors can make more rational, less biased decisions. 👍]

#only("1")[#voiceover("To avoid recency bias, it's important to consider a longer time horizon, not just recent events.")]
#only("2")[#voiceover("Seeking out information that contradicts your views can also help counteract recency bias.")]
#only("3")[#voiceover("And being aware of your own biases is a key step in overcoming them.")]
#only("4")[#voiceover("By following these guidelines, investors can make more rational decisions that are less influenced by cognitive biases like recency bias.")]
]