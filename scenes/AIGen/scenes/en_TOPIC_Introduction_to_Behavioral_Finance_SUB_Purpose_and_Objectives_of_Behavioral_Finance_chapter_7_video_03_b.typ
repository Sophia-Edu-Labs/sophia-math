#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance]
#v(40pt)
#only("1-")[Behavioral Finance helps in understanding investor behavior that is \_\_\_\_\_.]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) always rational]#only("2-")[#text(fill:red)[a) always rational]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) influenced by psychological factors]#only("3-")[#text(fill:green)[b) influenced by psychological factors]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) predictable]#only("4-")[#text(fill:red)[c) predictable]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) efficient]#only("5-")[#text(fill:red)[d) efficient]]

#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("Option a) is incorrect. Behavioral Finance challenges the assumption that investors are always rational.")]
#only("3")[#voiceover("Option b) is the correct answer. Behavioral Finance helps us understand how psychological factors influence investor behavior.")]
#only("4")[#voiceover("Option c) is incorrect. Investor behavior is often unpredictable due to psychological biases.")]
#only("5")[#voiceover("Option d) is also incorrect. Behavioral Finance suggests that markets are not always efficient due to irrational investor behavior.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. Behavioral Finance studies psychological influences on financial decisions 🧠💰]
#v(20pt)
#only("2-")[2. It challenges the assumption of rational investor behavior 🤔❌]
#v(20pt)
#only("3-")[3. Psychological factors can lead to irrational decisions 🧠➡❌]
#v(20pt)
#only("4-")[4. This irrational behavior makes markets less efficient 📉]
#v(20pt)
#only("5-")[5. Therefore, Behavioral Finance helps understand investor behavior influenced by psychological factors 🧠➡💰]

#only("1")[#voiceover("Let's break this down step by step. First, remember that Behavioral Finance studies how psychological influences and biases affect financial behaviors and decisions.")]
#only("2")[#voiceover("It challenges the traditional assumption in finance that investors always behave rationally.")]
#only("3")[#voiceover("Psychological factors, such as biases and emotions, can lead investors to make irrational decisions.")]
#only("4")[#voiceover("This irrational behavior can cause market anomalies and make markets less efficient.")]
#only("5")[#voiceover("Therefore, Behavioral Finance helps us understand investor behavior that is influenced by psychological factors, rather than assuming that investors are always rational and markets are always efficient.")]
]