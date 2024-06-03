#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rationality in Traditional Finance]
#v(40pt)
#only("1-")[Which of the following does rationality mean in traditional finance?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) minimize risk]#only("2-")[#text(fill:red)[a) minimize risk]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) maximize utility]#only("3-")[#text(fill:green)[b) maximize utility]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) follow trends]#only("4-")[#text(fill:red)[c) follow trends]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) avoid losses]#only("5-")[#text(fill:red)[d) avoid losses]]
#v(40pt)

#only("1")[#voiceover("Great job! That's absolutely correct.")]
// Very briefly Talk about b and why it is correct
#only("3")[#voiceover("Option b) maximize utility is the right answer. In traditional finance, rationality means that investors make decisions to maximize their utility based on all available information.")]
// Very briefly Talk about a and why it is incorrect
#only("2")[#voiceover("Option a) minimize risk is incorrect. While minimizing risk can be a factor in decision making, it's not the definition of rationality in traditional finance.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("Option c) follow trends is also incorrect. Following trends doesn't necessarily align with making rational decisions based on available information.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And option d) avoid losses is incorrect as well. Similar to minimizing risk, avoiding losses can influence decisions but doesn't define rationality in traditional finance.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. Recall the definition of rationality in traditional finance:]
#v(20pt)
#only("2-")[   - Investors make decisions to maximize their utility 🧮]
#only("3-")[   - Decisions are based on all available information 📊]
#v(40pt)
#only("4-")[2. Match the definition with the given options:]
#v(20pt)
#only("5-")[   a) minimize risk ❌]
#only("6-")[   b) maximize utility ✅]
#only("7-")[   c) follow trends ❌]
#only("8-")[   d) avoid losses ❌]
#v(40pt)
#only("9-")[3. Therefore, the correct answer is b) maximize utility. 🎉]

#only("1")[#voiceover("Now, let's go through the solution step by step.")]
#only("2")[#voiceover("First, recall that in traditional finance, rationality means that investors make decisions to maximize their utility...")]
#only("3")[#voiceover("...and these decisions are based on all available information.")]
#only("4")[#voiceover("Next, let's match this definition with the given options.")]
#only("5")[#voiceover("Option a) minimize risk doesn't align with the definition of rationality.")]
#only("6")[#voiceover("Option b) maximize utility matches the definition perfectly.")]
#only("7")[#voiceover("Option c) follow trends doesn't correspond to making decisions based on available information.")]
#only("8")[#voiceover("And option d) avoid losses, while a factor in decision making, doesn't define rationality.")]
#only("9")[#voiceover("Therefore, by process of elimination and direct matching, we can conclude that the correct answer is option b) maximize utility.")]

]