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
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect.
#only("-1")[a) It leads to accurate predictions]#only("2-")[#text(fill:red)[a) It leads to accurate predictions]] 
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) It leads to overconfidence in predicting future events]#only("3-")[#text(fill:green)[b) It leads to overconfidence in predicting future events]]
#v(10pt)  
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) It has no effect]#only("4-")[#text(fill:red)[c) It has no effect]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.  
#only("-4")[d) It improves rationality]#only("5-")[#text(fill:red)[d) It improves rationality]]

#only("1")[#voiceover("That's not quite right. Let's look at the correct solution.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)  
#only("1-")[Hindsight bias is the tendency to see events as having been predictable after they have already occurred.]
#v(20pt)
#only("2-")[This can lead to overconfidence in one's ability to predict future events, as past events seem more predictable in hindsight.]
#v(20pt)
#only("3-")[In financial decision-making, this overconfidence can lead to:
- Excessive risk-taking 🎲
- Insufficient diversification 📊
- Ignoring warning signs ⚠]

#only("1")[#voiceover("Let's understand why option b is correct. Hindsight bias is the tendency to see events as having been predictable after they have already occurred.")]
#only("2")[#voiceover("This can lead to overconfidence in one's ability to predict future events, as past events seem more predictable in hindsight.")]  
#only("3")[#voiceover("In the context of financial decision-making, this overconfidence can manifest in several ways. It can lead to excessive risk-taking, as investors may believe they can predict market movements. It can also lead to insufficient diversification, as investors may overweight investments that have performed well in the past. And it can cause investors to ignore warning signs, believing they would have seen them coming.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)  
#only("1-")[Hindsight bias can make investors believe they can predict market movements more accurately than they actually can, leading to suboptimal decisions.]

#only("1")[#voiceover("In essence, hindsight bias can make investors believe they can predict market movements more accurately than they actually can. This leads to suboptimal decision-making.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Why Other Options are Incorrect]
#v(40pt)
#only("1-")[a) It leads to accurate predictions ❌]
#v(20pt)  
#only("2-")[Hindsight bias actually leads to a false sense of predictability, not accurate predictions.]
#v(40pt)
#only("3-")[c) It has no effect ❌]
#v(20pt)
#only("4-")[As we've seen, hindsight bias can significantly impact financial decisions, so it does have an effect.]

#only("1")[#voiceover("Now let's briefly look at why the other options are incorrect.")]  
#only("2")[#voiceover("Option a suggests that hindsight bias leads to accurate predictions. However, hindsight bias actually leads to a false sense of predictability, not accurate predictions.")]
#only("3")[#voiceover("Option c states that hindsight bias has no effect.")]
#only("4")[#voiceover("But as we've seen, hindsight bias can significantly impact financial decisions, so it does have an effect, and a negative one at that.")]  
]

#slide()[
#text(size: 30pt, weight: "bold")[Why Other Options are Incorrect (cont.)]
#v(40pt)
#only("1-")[d) It improves rationality ❌]
#v(20pt)
#only("2-")[Hindsight bias is a cognitive bias, which by definition deviates from rationality. It doesn't improve it.]

#only("1")[#voiceover("Finally, option d proposes that hindsight bias improves rationality.")]
#only("2")[#voiceover("However, hindsight bias is a cognitive bias, which by definition deviates from rationality. It doesn't improve it, but rather hinders it.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Hindsight bias: tendency to see past events as predictable 🔮]
#v(20pt)
#only("2-")[- Leads to overconfidence in predicting future events 🧠]  
#v(20pt)
#only("3-")[- In finance, can cause:
  - Excessive risk-taking 🎲
  - Insufficient diversification 📊 
  - Ignoring warning signs ⚠]
#v(20pt)  
#only("4-")[- Deviates from rationality, leads to suboptimal decisions 📉]

#only("1")[#voiceover("To recap, hindsight bias is the tendency to see past events as having been predictable.")]
#only("2")[#voiceover("This leads to overconfidence in one's ability to predict future events.")] 
#only("3")[#voiceover("In the context of finance, this can cause excessive risk-taking, insufficient diversification, and ignoring of warning signs.")]
#only("4")[#voiceover("Hindsight bias deviates from rationality and leads to suboptimal decisions. It's important for investors to be aware of this bias and actively work to counteract it in their decision-making process.")]  
]