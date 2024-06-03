#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance Focus]
#v(40pt)
#only("1-")[Which of the following is a key focus of Behavioral Finance?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect.
#only("-1")[a) Predicting stock prices]#only("2-")[#text(fill:red)[a) Predicting stock prices]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Understanding investor behavior]#only("3-")[#text(fill:green)[b) Understanding investor behavior]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) Calculating interest rates]#only("4-")[#text(fill:red)[c) Calculating interest rates]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) Analyzing market competition]#only("5-")[#text(fill:red)[d) Analyzing market competition]]
#v(40pt)

#only("1")[#voiceover("Great job! You've chosen the correct answer.")]
// Very briefly talk about b and why it is correct
#only("3")[#voiceover("Understanding investor behavior is indeed a key focus of Behavioral Finance. It studies how psychological factors influence financial decisions.")]
// Very briefly talk about a and why it is incorrect
#only("2")[#voiceover("Predicting stock prices is not the main focus of Behavioral Finance. While it may contribute to this, it's not the primary goal.")]
// Very briefly talk about c and why it is incorrect
#only("4")[#voiceover("Calculating interest rates is a task in traditional finance, not Behavioral Finance.")]
// Very briefly talk about d and why it is incorrect
#only("5")[#voiceover("Analyzing market competition is more related to economics and business strategy, not directly to Behavioral Finance.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance Focus]
#v(40pt)
#only("1-")[Let's understand this further:]
#v(20pt)
#only("2-")[- Behavioral Finance studies how #text(weight: "bold")[psychology influences] financial decisions 🧠💰]
#only("3-")[- It tries to explain why investors often make #text(weight: "bold")[irrational choices] 🤔❌]
#only("4-")[- This is different from traditional finance, which assumes #text(weight: "bold")[rational behavior] 📈✅]
#only("5-")[- By understanding these biases, we can make #text(weight: "bold")[better financial decisions] 💡💸]

#only("1")[#voiceover("Let's dive a bit deeper into why understanding investor behavior is the key focus of Behavioral Finance.")]
#only("2")[#voiceover("Behavioral Finance is all about studying how psychological factors, like emotions and cognitive biases, influence the financial decisions that people make.")]
#only("3")[#voiceover("It tries to explain why investors often make choices that seem irrational, like buying high and selling low.")]
#only("4")[#voiceover("This is different from traditional finance theories, which assume that investors always behave rationally to maximize their profits.")]
#only("5")[#voiceover("By understanding these psychological biases, Behavioral Finance aims to help investors make better, more informed financial decisions.")]
]