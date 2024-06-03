#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hindsight Bias]
#v(40pt)
How can hindsight bias affect financial decisions?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) It leads to accurate predictions]#only("2-")[#text(fill:red)[a) It leads to accurate predictions]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) It leads to overconfidence in predicting future events]#only("3-")[#text(fill:green)[b) It leads to overconfidence in predicting future events]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) It has no effect]#only("4-")[#text(fill:red)[c) It has no effect]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) It improves rationality]#only("5-")[#text(fill:red)[d) It improves rationality]]
#only("1")[#voiceover("Not quite. Let's review the correct solution.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. Hindsight bias: tendency to see past events as predictable 🔮]
#v(20pt)
#only("2-")[2. Can lead to overconfidence in ability to predict future 🤔]
#v(20pt)
#only("3-")[3. May cause taking excessive risks in financial decisions 💸]
#v(20pt)
#only("4-")[4. Example: "I knew that stock would crash, I should have sold!" 📉]
#v(20pt)
#only("5-")[5. Hindsight bias ≠ improved decision making or rationality ❌]
#only("1")[#voiceover("First, let's recall that hindsight bias is the tendency to see past events as having been predictable, even when they may not have been at the time.")]
#only("2")[#voiceover("This can lead to overconfidence in one's ability to predict future events.")]
#only("3")[#voiceover("In financial decision making, this overconfidence may cause an individual to take excessive risks, believing they can predict market movements.")]
#only("4")[#voiceover("For example, after a stock market crash, someone might say, 'I knew that stock would crash, I should have sold!' even though the crash may not have been predictable.")]
#only("5")[#voiceover("It's important to note that hindsight bias does not actually improve decision making or rationality. It's a cognitive bias that can lead to suboptimal financial choices if not recognized and accounted for.")]
]