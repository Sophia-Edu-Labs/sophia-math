#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance vs Traditional Finance]
#v(40pt)
Market efficiency assumes that investors are \_\_\_\_.
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) irrational]#only("2-")[#text(fill:red)[a) irrational]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is incorrect.
#only("-2")[b) influenced by biases]#only("3-")[#text(fill:red)[b) influenced by biases]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) rational]#only("4-")[#text(fill:green)[c) rational]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) unpredictable]#only("5-")[#text(fill:red)[d) unpredictable]]

#only("1")[#voiceover("That's absolutely right! Great job.")]
#only("2")[#voiceover("Option a) irrational is incorrect. Market efficiency assumes the opposite - that investors are rational.")]
#only("3")[#voiceover("Option b) influenced by biases is also incorrect for the same reason. Market efficiency assumes investors are not influenced by biases.")]
#only("4")[#voiceover("The correct answer is c) rational. The efficient market hypothesis, a key concept in traditional finance, assumes that investors are rational decision-makers.")]
#only("5")[#voiceover("Finally, option d) unpredictable is incorrect. While individual investor behavior might be hard to predict, market efficiency assumes that collectively, investors act rationally.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Explanation]
#v(40pt)
#only("1-")[1. Market efficiency is a key concept in traditional finance 📈]
#v(20pt)
#only("2-")[2. It assumes that markets reflect all available information 💡]
#v(20pt)
#only("3-")[3. For this to hold, it assumes that investors make rational, informed decisions 🧠]
#v(20pt)
#only("4-")[4. Behavioral finance challenges this, suggesting investors are often irrational and biased 🎭]
#v(20pt)
#only("5-")[5. But the core assumption of market efficiency remains investor rationality ✅]

#only("1")[#voiceover("Let's break this down step by step. Market efficiency is a foundational concept in traditional finance.")]
#only("2")[#voiceover("The efficient market hypothesis states that market prices reflect all available information.")]
#only("3")[#voiceover("For markets to be efficient in this way, it assumes that investors are making rational, informed decisions based on this information.")]
#only("4")[#voiceover("Behavioral finance, on the other hand, challenges this assumption. It suggests that investors are often irrational and influenced by psychological biases.")]
#only("5")[#voiceover("However, the core assumption of market efficiency, as posed in the question, remains that investors are rational. This is why c) rational is the correct answer.")]
]