#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Anchoring Bias]
#v(40pt)
#only("1-")[What is anchoring bias?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Relying on multiple sources of information]#only("2-")[#text(fill:red)[a) Relying on multiple sources of information]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Relying too heavily on the first piece of information]#only("3-")[#text(fill:green)[b) Relying too heavily on the first piece of information]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Ignoring initial information]#only("4-")[#text(fill:red)[c) Ignoring initial information]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]
#only("1")[#voiceover("Not quite, but don't worry! Let's look at the correct solution.")]
#only("2")[#voiceover("Option a) Relying on multiple sources of information is incorrect. Anchoring bias does not involve multiple sources, but rather focusing too much on one initial piece of information.")]
#only("3")[#voiceover("Option b) Relying too heavily on the first piece of information is the correct answer. Anchoring bias is indeed the tendency to rely too heavily on the first piece of information encountered.")]
#only("4")[#voiceover("Option c) Ignoring initial information is also incorrect. Anchoring bias involves over-relying on initial information, not ignoring it.")]
#only("5")[#voiceover("And option d) None of the above is incorrect, as one of the options, namely b), correctly defines anchoring bias.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Anchoring Bias]
#v(40pt)
#only("1-")[Definition: 📜]
#v(20pt)
#only("2-")[- Tendency to rely too heavily on the first piece of information encountered when making decisions 🧠]
#v(40pt)
#only("3-")[Example: 🌐]
#v(20pt)
#only("4-")[- Initial price of a product influencing subsequent price negotiations 💰]

#only("1")[#voiceover("Let's look at the definition and an example of anchoring bias.")]
#only("2")[#voiceover("Anchoring bias is the tendency to rely too heavily on the first piece of information encountered when making decisions. The initial information acts as an 'anchor' and influences subsequent thoughts and judgments.")]
#only("3")[#voiceover("Here's an example to illustrate anchoring bias:")]
#only("4")[#voiceover("When negotiating the price of a product, the initial price offered can serve as an anchor. Even if this initial price is arbitrary, it can have a significant influence on the outcome of the negotiation, as subsequent prices are often adjusted relative to this anchor.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Anchoring Bias in Financial Decisions]
#v(40pt)
#only("1-")[Examples: 💸]
#v(20pt)
#only("2-")[- Stock price: Current price influencing perceptions of value 📈]
#v(20pt)
#only("3-")[- Real estate: Listing price shaping negotiations 🏠]
#v(20pt)
#only("4-")[- Salary negotiations: Initial offer anchoring subsequent discussions 💼]

#only("1")[#voiceover("Anchoring bias can have significant impacts in various financial decision-making contexts.")]
#only("2")[#voiceover("In the stock market, investors may anchor to the current price of a stock and use it as a reference point for judging the stock's value, even if this price is not reflective of the company's fundamentals.")]
#only("3")[#voiceover("In real estate transactions, the initial listing price of a property can act as an anchor, influencing buyers' perceptions of the property's value and subsequent price negotiations.")]
#only("4")[#voiceover("And in salary negotiations, the first salary figure put forward, whether by the employer or the job candidate, can serve as a powerful anchor and have a disproportionate influence on the final salary agreed upon.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mitigating Anchoring Bias]
#v(40pt)
#only("1-")[Strategies: 🎯]
#v(20pt)
#only("2-")[- Be aware of potential anchors 🧐]
#v(20pt)
#only("3-")[- Consider multiple pieces of information 🗂️]
#v(20pt)
#only("4-")[- Deliberately adjust away from anchors 🔧]
#v(20pt)
#only("5-")[- Seek out objective data and benchmarks 📊]

#only("1")[#voiceover("To mitigate the effects of anchoring bias in financial decision-making, several strategies can be employed.")]
#only("2")[#voiceover("First, it's important to be aware of potential anchors and recognize when an initial piece of information might be unduly influencing your judgment.")]
#only("3")[#voiceover("Second, make an effort to consider multiple pieces of information, rather than fixating on one initial anchor.")]
#only("4")[#voiceover("Third, when you recognize that you may be anchored to a particular value, consciously adjust your estimates away from this anchor.")]
#only("5")[#voiceover("And finally, seek out objective data, benchmarks, and other reference points to help inform your decisions, rather than relying solely on potentially arbitrary anchors.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Anchoring bias: Relying too heavily on initial information 🧱]
#v(20pt)
#only("2-")[- Can significantly impact financial decisions 💰]
#v(20pt)
#only("3-")[- Strategies to mitigate: Awareness, multiple info sources, adjustment, objective data 🛡️]
#v(20pt)
#only("4-")[- Being cognizant of anchoring can improve decision-making 🧠]

#only("1")[#voiceover("To recap, anchoring bias is the tendency to rely too heavily on the first piece of information encountered when making decisions.")]
#only("2")[#voiceover("This bias can have significant impacts on various financial decisions, from stock investing to salary negotiations.")]
#only("3")[#voiceover("To mitigate anchoring bias, strategies include being aware of potential anchors, considering multiple pieces of information, deliberately adjusting away from anchors, and seeking out objective data.")]
#only("4")[#voiceover("By being cognizant of anchoring bias and actively working to counter its effects, you can improve the quality of your financial decision-making.")]
]