#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance]
#v(40pt)
#only("1-")[According to behavioral finance, investors are influenced by ___.]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) rational decisions]#only("2-")[#text(fill:red)[a) rational decisions]] 
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) market efficiency]#only("3-")[#text(fill:red)[b) market efficiency]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) psychological biases]#only("4-")[#text(fill:green)[c) psychological biases]]
#v(10pt) 
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) utility maximization]#only("5-")[#text(fill:red)[d) utility maximization]]

#only("1")[#voiceover("That's not quite right. Let's take a look at the correct solution...")]
#only("2")[#voiceover("a) rational decisions is incorrect. Behavioral finance actually suggests that investors are not always rational in their decision making.")]
#only("3")[#voiceover("b) market efficiency is also incorrect. Behavioral finance challenges the notion of efficient markets assumed in traditional finance.")]
#only("4")[#voiceover("c) psychological biases. This is the key idea in behavioral finance - that investors are influenced by various psychological biases.")]
#only("5")[#voiceover("And d) utility maximization is a concept from traditional finance, not behavioral finance, so it's incorrect here.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Psychological Biases 🧠]
#v(40pt)  
#only("1-")[Behavioral finance identifies several psychological biases that affect investor behavior, such as:]
#v(20pt)
#only("2-")[- Overconfidence 🦸]
#only("3-")[- Loss aversion 📉]
#only("4-")[- Herd behavior 🐑]
#only("5-")[- Anchoring 🛳️]
#v(40pt)
#only("6-")[These biases can lead to irrational decisions and market inefficiencies. 📊]

#only("1")[#voiceover("Let's dive a bit deeper into what we mean by psychological biases in behavioral finance.")]
#only("2")[#voiceover("One key bias is overconfidence, where investors overestimate their knowledge or ability to predict market movements.")]
#only("3")[#voiceover("Another is loss aversion, the tendency to prefer avoiding losses over acquiring equivalent gains.")]
#only("4")[#voiceover("Herd behavior is when investors follow the actions of a larger group, potentially leading to market bubbles or crashes.")]
#only("5")[#voiceover("And anchoring bias is when investors rely too heavily on an initial piece of information when making decisions.")]
#only("6")[#voiceover("These and other psychological biases can lead investors to make irrational decisions, causing market prices to deviate from their fundamental values. This is a key insight of behavioral finance that sets it apart from traditional finance theories.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Traditional vs Behavioral Finance]
#v(40pt)
#only("1-")[Traditional Finance 📈:]
#only("2-")[- Assumes investor rationality 🤔]
#only("3-")[- Believes in efficient markets 📊]
#v(20pt)
#only("4-")[Behavioral Finance 🧠:]
#only("5-")[- Recognizes psychological biases 😵]
#only("6-")[- Suggests markets can be inefficient 📉]

#only("1")[#voiceover("It's important to understand how behavioral finance differs from traditional finance.")]
#only("2")[#voiceover("Traditional finance assumes that investors are rational agents who always make decisions to maximize their utility.")]
#only("3")[#voiceover("It also believes in the Efficient Market Hypothesis, which states that asset prices fully reflect all available information.")]
#only("4")[#voiceover("In contrast, behavioral finance...")]
#only("5")[#voiceover("...recognizes that investors are human and subject to various psychological biases that can affect their decision making.")]
#only("6")[#voiceover("As a result, behavioral finance suggests that markets can be inefficient, with asset prices deviating from their fundamental values due to investor irrationality. This is a key difference between the two approaches to understanding financial markets and investor behavior.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Behavioral finance studies how psychological factors affect financial decisions 🧠💰]
#v(20pt)
#only("2-")[- It identifies several psychological biases that can lead to irrational behavior 😵]
#v(20pt)
#only("3-")[- This contrasts with traditional finance's assumptions of rationality and efficiency 📈]
#v(20pt)
#only("4-")[- Understanding these biases can help explain market anomalies and inefficiencies 📊]

#only("1")[#voiceover("To summarize, behavioral finance is a field that studies how psychological factors influence investors' financial decision making.")]
#only("2")[#voiceover("It identifies a range of psychological biases, such as overconfidence, loss aversion, and herd behavior, that can cause investors to behave irrationally.")]
#only("3")[#voiceover("This is in stark contrast to traditional finance, which assumes investor rationality and market efficiency.")]
#only("4")[#voiceover("By understanding these psychological biases, behavioral finance can help explain many of the anomalies and inefficiencies observed in real-world financial markets. This makes it a valuable complement to traditional financial theories.")]
]