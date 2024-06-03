#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Traditional Finance Assumptions]
#v(40pt)
#text(size: 24pt)[Question: Traditional finance assumes that investors are \_\_\_\_\_.] 
#v(20pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) irrational]#only("2-")[#text(fill:red)[a) irrational]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) rational]#only("3-")[#text(fill:green)[b) rational]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) emotional]#only("4-")[#text(fill:red)[c) emotional]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) unpredictable]#only("5-")[#text(fill:red)[d) unpredictable]]

#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
// Very briefly talk about b and why it is correct
#only("3")[#voiceover("Traditional finance assumes that investors are rational, meaning they make decisions based on maximizing their utility and using all available information.")]
// Very briefly talk about a and why it is incorrect
#only("2")[#voiceover("Option a, irrational, is incorrect because traditional finance assumes the opposite - that investors are rational.")]
// Very briefly talk about c and why it is incorrect
#only("4")[#voiceover("Option c, emotional, is also incorrect. Traditional finance does not consider the role of emotions in investor decision-making.")]
// Very briefly talk about d and why it is incorrect
#only("5")[#voiceover("And option d, unpredictable, is incorrect as well. Traditional finance assumes that investor behavior is predictable based on the assumption of rationality.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Explanation]
#v(40pt)
#only("1-")[1. Traditional finance is based on several key assumptions 🗝️]
#v(20pt)
#only("2-")[2. One of these assumptions is investor rationality 🧠]
#v(20pt)
#only("3-")[3. Rationality means investors:]
    - Aim to maximize their utility 📈
    - Use all available information 📚
    - Make consistent, predictable decisions 🎯
#v(20pt)    
#only("4-")[4. This contrasts with behavioral finance, which considers psychological factors and biases 🧐]

#only("1")[#voiceover("Now, let's break down the concept step-by-step to reinforce your understanding.")]
#only("2")[#voiceover("Traditional finance relies on several key assumptions, one of which is the assumption of investor rationality.")]
#only("3")[#voiceover("In this context, rationality means that investors aim to maximize their utility or satisfaction, they use all available information when making decisions, and their decisions are consistent and predictable.")]
#only("4")[#voiceover("This assumption of rationality in traditional finance contrasts with the approach of behavioral finance, which takes into account psychological factors and biases that can influence investor behavior and lead to seemingly irrational decisions.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Traditional finance assumes investor rationality 🧠]
#v(20pt)
#only("2-")[- Rational investors maximize utility and use all information 📈📚]
#v(20pt)
#only("3-")[- This leads to consistent, predictable behavior 🎯]
#v(20pt)
#only("4-")[- Behavioral finance challenges this assumption 🧐]

#only("1")[#voiceover("To summarize, remember that traditional finance assumes investor rationality.")]
#only("2")[#voiceover("Rational investors aim to maximize their utility and make decisions based on all available information.")]
#only("3")[#voiceover("This assumption leads to the expectation of consistent and predictable investor behavior.")]
#only("4")[#voiceover("However, behavioral finance challenges this assumption by considering the impact of psychological factors and biases on investor decision-making.")]
]