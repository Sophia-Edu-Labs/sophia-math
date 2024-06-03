#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Investor Behavior]
#v(40pt)
#only("1-")[According to behavioral finance, investors are:]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) always rational]#only("2-")[#text(fill:red)[a) always rational]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is incorrect.
#only("-2")[b) always irrational]#only("3-")[#text(fill:red)[b) always irrational]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) influenced by biases]#only("4-")[#text(fill:green)[c) influenced by biases]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) unaffected by emotions]#only("5-")[#text(fill:red)[d) unaffected by emotions]]

#only("1")[#voiceover("That's correct, great job! Behavioral finance suggests that investors are influenced by biases.")]
// Very briefly Talk about a and why it is incorrect
#only("2")[#voiceover("Option a) always rational is incorrect. Behavioral finance challenges the assumption of investor rationality.")]
// Very briefly Talk about b and why it is incorrect 
#only("3")[#voiceover("Option b) always irrational is also incorrect. While behavioral finance acknowledges irrational behavior, it doesn't suggest that investors are always irrational.")]
// Very briefly Talk about c and why it is correct
#only("4")[#voiceover("Option c) influenced by biases is the correct answer. Behavioral finance studies how psychological biases affect investor decisions.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("Option d) unaffected by emotions is incorrect. Behavioral finance recognizes that emotions can influence investment choices.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Psychological Biases 🧠]
#v(40pt)
#only("1-")[Behavioral finance identifies various psychological biases, such as:]
#v(20pt)
#only("2-")[- Overconfidence bias 😎]
#v(10pt)
#only("3-")[- Loss aversion 📉]
#v(10pt)
#only("4-")[- Herd behavior 🐑]
#v(10pt)
#only("5-")[- Anchoring bias ⚓]

#only("1")[#voiceover("Let's look at some of the psychological biases identified in behavioral finance.")]
#only("2")[#voiceover("Overconfidence bias occurs when investors overestimate their knowledge or ability to predict market movements.")]
#only("3")[#voiceover("Loss aversion refers to the tendency of investors to prefer avoiding losses over acquiring equivalent gains.")]
#only("4")[#voiceover("Herd behavior happens when individuals follow the actions of a larger group, often leading to market bubbles or crashes.")]
#only("5")[#voiceover("Anchoring bias occurs when individuals rely too heavily on an initial piece of information when making decisions.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Impact on Markets 📈]
#v(40pt)
#only("1-")[Psychological biases can lead to:]
#v(20pt)
#only("2-")[- Market inefficiencies 🌀]
#v(10pt)
#only("3-")[- Mispricing of assets 💸]
#v(10pt)
#only("4-")[- Bubbles and crashes 💥]

#only("1")[#voiceover("These psychological biases can have significant impacts on financial markets.")]
#only("2")[#voiceover("They can lead to market inefficiencies, where prices deviate from their fundamental values.")]
#only("3")[#voiceover("Assets may be mispriced as a result, with prices being driven by psychological factors rather than underlying fundamentals.")]
#only("4")[#voiceover("In extreme cases, psychological biases can contribute to the formation and bursting of market bubbles and crashes.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Behavioral finance: investors are influenced by biases 🧠]
#v(20pt)
#only("2-")[- Various psychological biases identified 🔍]
#v(20pt)
#only("3-")[- Biases can lead to market inefficiencies and mispricing 📉]
#v(20pt)
#only("4-")[- Important to understand for investors and policymakers 🎓]

#only("1")[#voiceover("To summarize, behavioral finance suggests that investors are influenced by various psychological biases.")]
#only("2")[#voiceover("These biases include overconfidence, loss aversion, herd behavior, and anchoring, among others.")]
#only("3")[#voiceover("The presence of these biases can lead to market inefficiencies, mispricing of assets, and in extreme cases, bubbles and crashes.")]
#only("4")[#voiceover("Understanding these biases is important for investors to make better decisions and for policymakers to design effective regulations.")]
]