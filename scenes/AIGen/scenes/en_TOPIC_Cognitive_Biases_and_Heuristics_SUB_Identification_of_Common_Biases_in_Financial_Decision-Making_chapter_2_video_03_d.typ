#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Confirmation Bias]
#v(40pt)
#only("1-")[How can confirmation bias affect financial decisions?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) It leads to balanced decision-making]#only("2-")[#text(fill:red)[a) It leads to balanced decision-making]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) It leads to ignoring contradictory information]#only("3-")[#text(fill:green)[b) It leads to ignoring contradictory information]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) It has no effect]#only("4-")[#text(fill:red)[c) It has no effect]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) It improves accuracy]#only("5-")[#text(fill:red)[d) It improves accuracy]]
#only("1")[#voiceover("That's not quite right. Let's take a look at the correct solution.")]
#only("2")[#voiceover("Option a) is incorrect. Confirmation bias does not lead to balanced decision-making. In fact, it leads to the opposite - focusing only on information that confirms one's preconceptions.")]
#only("3")[#voiceover("Option b) is correct. Confirmation bias indeed leads to ignoring contradictory information. People affected by this bias tend to disregard or downplay information that challenges their existing beliefs.")]
#only("4")[#voiceover("Option c) is incorrect. Confirmation bias definitely has an effect on financial decisions. It can lead to poor, imbalanced decisions by causing people to ignore important information.")]
#only("5")[#voiceover("Option d) is also incorrect. Confirmation bias does not improve accuracy. Instead, it can lead to inaccurate decisions by causing people to focus only on confirming information and ignore contradictory data.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[Confirmation bias is the tendency to:]
#v(20pt)
#only("2-")[- Search for information that confirms one's preconceptions 🔍]
#v(10pt)
#only("3-")[- Interpret information in a way that confirms one's beliefs 🧠]
#v(10pt)
#only("4-")[- Remember information that reinforces one's views 💭]
#v(40pt)
#only("5-")[This leads to #text(weight: "bold")[ignoring contradictory information] in financial decisions. 🙈]

#only("1")[#voiceover("Let's break this down further. Confirmation bias is the tendency to...")]
#only("2")[#voiceover("...search for information that confirms one's preconceptions...")]
#only("3")[#voiceover("...interpret information in a way that confirms one's beliefs...")]
#only("4")[#voiceover("...and remember information that reinforces one's views.")]
#only("5")[#voiceover("In financial decision-making, this bias leads to ignoring contradictory information. People affected by confirmation bias tend to disregard or downplay information that challenges their existing beliefs about an investment or financial decision.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider an investor who believes that a particular stock is a good investment. 📈]
#v(20pt)
#only("2-")[Due to confirmation bias, the investor might:]
#v(10pt)
#only("3-")[- Actively seek out information that supports their belief 👍]
#v(10pt)
#only("4-")[- Interpret ambiguous information as confirming their view 🤔]
#v(10pt)
#only("5-")[- Ignore or discount information that contradicts their belief ❌]
#v(40pt)
#only("6-")[This can lead to #text(weight: "bold")[poor investment decisions]. 💸]

#only("1")[#voiceover("Let's consider an example. Imagine an investor who believes that a particular stock is a good investment.")]
#only("2")[#voiceover("Due to confirmation bias, the investor might...")]
#only("3")[#voiceover("...actively seek out information that supports their belief, such as positive news articles or analyst reports...")]
#only("4")[#voiceover("...interpret ambiguous information as confirming their view, even if it's not clearly supportive...")]
#only("5")[#voiceover("...and ignore or discount information that contradicts their belief, such as negative earnings reports or industry trends.")]
#only("6")[#voiceover("By focusing only on confirming information and ignoring contradictory data, the investor may make a poor investment decision. They may invest too much in the stock or hold on to it for too long, leading to financial losses.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[Confirmation bias affects financial decisions by:]
#v(20pt)
#only("2-")[- Leading to a one-sided information search 🔍]
#v(10pt)
#only("3-")[- Causing biased interpretation of information 🧠]
#v(10pt)
#only("4-")[- Resulting in the #text(weight: "bold")[ignoring of contradictory information] ❌]
#v(40pt)
#only("5-")[This can lead to #text(weight: "bold")[poor financial choices]. 💸]

#only("1")[#voiceover("To summarize, confirmation bias affects financial decisions by...")]
#only("2")[#voiceover("...leading to a one-sided search for information that confirms one's preconceptions...")]
#only("3")[#voiceover("...causing a biased interpretation of information to fit one's existing beliefs...")]
#only("4")[#voiceover("...and resulting in the ignoring of contradictory information that challenges one's views.")]
#only("5")[#voiceover("By causing people to focus only on confirming information and ignore contradictory data, confirmation bias can lead to poor financial choices, such as overinvesting in a stock or holding on to a losing investment for too long.")]
]