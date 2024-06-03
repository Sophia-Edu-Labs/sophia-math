#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise 2]
#v(40pt)
Behavioral Finance can help in \_\_\_\_\_.
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) making irrational decisions]#only("2-")[#text(fill:red)[a) making irrational decisions]] 
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) developing financial policies]#only("3-")[#text(fill:green)[b) developing financial policies]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) ignoring biases]#only("4-")[#text(fill:red)[c) ignoring biases]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) predicting market trends]#only("5-")[#text(fill:red)[d) predicting market trends]]
#v(40pt)
#only("1")[#voiceover("Great job! You've selected the correct answer.")]
#only("2")[#voiceover("Option a) making irrational decisions is incorrect. Behavioral finance aims to understand and mitigate irrational decisions, not encourage them.")]
#only("3")[#voiceover("Option b) developing financial policies is indeed correct. Insights from behavioral finance can inform policy decisions to account for human biases.")]
#only("4")[#voiceover("Option c) ignoring biases is incorrect. Behavioral finance seeks to identify and understand biases, not ignore them.")]
#only("5")[#voiceover("And option d) predicting market trends is also incorrect. While behavioral finance can help explain market anomalies, its primary goal is not prediction.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. Behavioral finance studies psychological influences on financial decisions. 🧠💰]
#v(20pt)
#only("2-")[2. It aims to understand irrational investor behavior. 🤔❓]
#v(20pt)
#only("3-")[3. Insights from behavioral finance can inform policy decisions. 📈🏛️]
#v(20pt)
#only("4-")[4. Policies can be designed to account for human biases. 📝✅]
#v(20pt)
#only("5-")[5. Therefore, behavioral finance can help in developing financial policies. 🎯💼]
#only("1")[#voiceover("Let's break this down step by step. First, behavioral finance is the study of how psychological factors influence financial decisions and market outcomes.")]
#only("2")[#voiceover("A key goal of behavioral finance is to understand why investors often make irrational decisions that deviate from classical economic theory.")]
#only("3")[#voiceover("The insights gained from behavioral finance research can be used to inform and guide policy decisions.")]
#only("4")[#voiceover("For example, policies can be designed to account for and mitigate the impact of common human biases on financial markets and decision-making.")]
#only("5")[#voiceover("Therefore, we can conclude that one of the practical applications of behavioral finance is in developing more effective financial policies that are grounded in a realistic understanding of human behavior.")]
]