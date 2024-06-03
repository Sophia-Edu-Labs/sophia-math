#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence Bias]
#v(40pt)
What is overconfidence bias?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Underestimating one's abilities]#only("2-")[#text(fill:red)[a) Underestimating one's abilities]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Overestimating one's abilities]#only("3-")[#text(fill:green)[b) Overestimating one's abilities]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Accurate self-assessment]#only("4-")[#text(fill:red)[c) Accurate self-assessment]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]
#only("1")[#voiceover("That's right, great job! Let's review why that answer is correct.")]
#only("2")[#voiceover("Choice a), underestimating one's abilities, is the opposite of overconfidence bias. Overconfidence bias involves overestimating, not underestimating.")]
#only("3")[#voiceover("Choice b), overestimating one's abilities, is indeed the correct definition of overconfidence bias. Individuals exhibiting this bias think they are more capable than they really are.")]
#only("4")[#voiceover("Choice c), accurate self-assessment, is also incorrect. Overconfidence bias leads to inaccurate, inflated self-assessment.")]
#only("5")[#voiceover("Finally, choice d), none of the above, is incorrect because one of the choices, b), does accurately define overconfidence bias.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence Bias Examples]
#v(40pt)
- 🏀 A novice basketball player thinking they can compete with professionals
#v(20pt)
- 📈 An investor believing they can consistently beat the market
#v(20pt)
- 🎓 A student certain they will ace a test without studying
#v(40pt)
#only("1-")[In each case, the person's belief in their abilities exceeds reality.]

#only("1")[#voiceover("Let's look at some examples to illustrate overconfidence bias. A novice basketball player might think they can compete with professionals, an investor might believe they can consistently beat the market, and a student might be certain they will ace a test without studying. In each of these cases, the person's belief in their own abilities exceeds reality.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence Bias in Finance]
#v(40pt)
- Can lead to excessive risk-taking 🎲
#v(20pt)
- May cause underestimation of risks ⚠
#v(20pt)
- Can result in under-diversification 📊
#v(40pt)
#only("1-")[Overconfident investors may make poor financial decisions.]

#only("1")[#voiceover("In the context of finance, overconfidence bias can have serious consequences. It can lead to excessive risk-taking, as overconfident investors may take on more risk than is prudent. They may also underestimate risks, believing that their abilities will allow them to avoid potential downsides. Furthermore, overconfidence can result in under-diversification, as investors may believe they can pick winners and therefore don't need to diversify. All of these factors can lead overconfident investors to make poor financial decisions.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mitigating Overconfidence Bias]
#v(40pt)
- Seek out contrary opinions 🗣
#v(20pt)
- Consider base rates and averages 📏
#v(20pt)
- Recognize the role of chance 🎲
#v(20pt)
- Practice humility and openness to learning 🙏
#v(40pt)
#only("1-")[By being aware of overconfidence bias, we can work to counteract it.]

#only("1")[#voiceover("To mitigate overconfidence bias, it's important to actively seek out opinions that contradict our own, as this can help us realize when we may be overestimating our abilities. We should also consider base rates and averages, recognizing that in many domains, it's very difficult to consistently outperform the average. It's also crucial to recognize the role of chance in outcomes and not attribute every success solely to our own abilities. Finally, practicing humility and openness to continuous learning can help us maintain a more realistic assessment of our abilities. By being aware of overconfidence bias and actively working to counteract it, we can improve our decision-making, especially in high-stakes areas like finance.")]
]