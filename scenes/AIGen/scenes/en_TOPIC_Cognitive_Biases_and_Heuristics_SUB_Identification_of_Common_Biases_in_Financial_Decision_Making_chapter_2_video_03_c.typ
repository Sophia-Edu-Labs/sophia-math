#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Confirmation Bias]
#v(40pt)
How can confirmation bias affect financial decisions?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) It leads to balanced decision-making]#only("2-")[#text(fill:red)[a) It leads to balanced decision-making]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) It leads to ignoring contradictory information]#only("3-")[#text(fill:green)[b) It leads to ignoring contradictory information]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) It has no effect]#only("4-")[#text(fill:red)[c) It has no effect]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) It improves accuracy]#only("5-")[#text(fill:red)[d) It improves accuracy]]
#only("1")[#voiceover("Not quite, but let's see the correct solution.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Definition]
#v(40pt)
#only("1-")[Confirmation bias is the tendency to search for, interpret, and remember information that confirms one's preconceptions. 🧠]
#only("1")[#voiceover("Confirmation bias is the tendency to search for, interpret, and remember information that confirms one's preconceptions.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Impact on Financial Decisions]
#v(40pt)
#only("1-")[- Investors may seek information that supports their existing beliefs 🔍]
#v(20pt)
#only("2-")[- They may ignore or discount information that contradicts their beliefs ❌]
#v(20pt)
#only("3-")[- This can lead to overconfidence and poor investment decisions 📉]
#only("1")[#voiceover("In the context of financial decisions, investors affected by confirmation bias may actively seek out information that supports their existing beliefs about an investment.")]
#only("2")[#voiceover("At the same time, they may ignore or discount information that contradicts their beliefs, even if this information is important and relevant.")]
#only("3")[#voiceover("This selective information gathering and interpretation can lead to overconfidence in one's investment decisions, and ultimately to poor financial outcomes.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[- An investor believes a stock will perform well 📈]
#v(20pt)
#only("2-")[- They actively seek positive news about the company 📰]
#v(20pt)
#only("3-")[- They dismiss negative reports as irrelevant or biased 🙈]
#v(20pt)
#only("4-")[- They invest heavily, ignoring the risks 💰]
#only("1")[#voiceover("For example, let's say an investor strongly believes that a particular stock will perform well.")]
#only("2")[#voiceover("Due to confirmation bias, they may actively seek out positive news and analyst reports that support their belief in the stock's potential.")]
#only("3")[#voiceover("When they encounter negative information about the company, they may dismiss it as irrelevant or assume it's biased.")]
#only("4")[#voiceover("As a result, they may invest heavily in the stock, ignoring potential risks and contrary indicators.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- Confirmation bias can lead to ignoring important contradictory information 🙉]
#v(20pt)
#only("2-")[- This can result in poor financial decisions and outcomes 💸]
#v(20pt)
#only("3-")[- It's important to actively seek and consider all relevant information 🔍]
#only("1")[#voiceover("In summary, confirmation bias can lead investors to ignore important information that contradicts their preconceptions.")]
#only("2")[#voiceover("This can result in poor financial decisions and negative outcomes.")]
#only("3")[#voiceover("To combat confirmation bias, it's crucial to actively seek out and consider all relevant information, not just information that aligns with one's existing beliefs.")]
]