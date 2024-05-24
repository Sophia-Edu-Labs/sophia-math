#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Confirmation Bias]
#v(40pt)
Which of the following would a trader influenced by confirmation bias most likely do?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) Ignore contrary evidence]#only("2-")[#text(fill:green)[a) Ignore contrary evidence]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Seek diverse opinions]#only("3-")[#text(fill:red)[b) Seek diverse opinions]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Frequently change strategies]#only("4-")[#text(fill:red)[c) Frequently change strategies]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Invest in low-risk stocks]#only("5-")[#text(fill:red)[d) Invest in low-risk stocks]]

#only("1")[#voiceover("That's absolutely right! Great job identifying the correct answer.")]
#only("2")[#voiceover("A trader influenced by confirmation bias would indeed most likely ignore evidence that contradicts their existing beliefs or hypotheses.")]
#only("3")[#voiceover("Seeking diverse opinions is actually the opposite of what someone with confirmation bias would do. They tend to seek information that confirms their preconceptions.")]
#only("4")[#voiceover("Frequently changing strategies is not a direct consequence of confirmation bias. If anything, confirmation bias might lead to sticking to a strategy even when it's not working.")]
#only("5")[#voiceover("Investing in low-risk stocks is not directly related to confirmation bias. Confirmation bias affects how one interprets information, not necessarily the risk profile of their investments.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Confirmation Bias Explained]
#v(40pt)
#only("1-")[What is confirmation bias? 🤔]
#v(20pt)
#only("2-")[- Tendency to search for, interpret, favor, and recall information in a way that confirms or supports one's prior beliefs or values 📈]
#v(20pt)
#only("3-")[- People displaying this bias tend to:]
  #only("4-")[- Gather evidence and recall information selectively 🔍]
  #only("5-")[- Interpret it in a biased way 🧠]
#v(20pt)  
#only("6-")[- The effect is stronger for desired outcomes, emotionally charged issues, and deeply entrenched beliefs 💪]

#only("1")[#voiceover("Let's dive a bit deeper into what confirmation bias is and how it manifests.")]
#only("2")[#voiceover("Confirmation bias is the tendency to search for, interpret, favor, and recall information in a way that confirms or supports one's prior beliefs or values.")]
#only("3")[#voiceover("People displaying this bias tend to do a couple of things:")]
#only("4")[#voiceover("First, they gather evidence and recall information selectively, focusing on information that supports their view.")]
#only("5")[#voiceover("Second, they interpret information in a biased way, again in a manner that supports their existing beliefs.")]
#only("6")[#voiceover("Confirmation bias tends to be stronger for emotionally charged issues and deeply entrenched beliefs. It can also be stronger when people are really motivated to arrive at a particular conclusion.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Confirmation Bias in Trading]
#v(40pt)
#only("1-")[How might this play out in trading? 📊]
#v(20pt)
#only("2-")[- Trader develops a belief about a stock or market trend 📈]
#v(20pt)
#only("3-")[- Selectively focuses on information that supports this belief 🔍]
  #only("4-")[- Bullish news and analysis]
  #only("5-")[- Positive historical data]
#v(20pt)  
#only("6-")[- Downplays or ignores contrary information ❌]
  #only("7-")[- Bearish news and analysis]
  #only("8-")[- Negative historical data]
#v(20pt)
#only("9-")[- Sticks to original belief, even if it leads to losses 📉]

#only("1")[#voiceover("So how might confirmation bias play out in the context of trading?")]
#only("2")[#voiceover("Let's say a trader develops a belief about a particular stock or market trend.")]
#only("3")[#voiceover("Under the influence of confirmation bias, they might start to selectively focus on information that supports this belief, such as:")]
#only("4")[#voiceover("Bullish news articles and analyst reports,")]
#only("5")[#voiceover("and historical data that seems to support their view.")]
#only("6")[#voiceover("On the flip side, they might downplay or completely ignore information that contradicts their belief, like:")]
#only("7")[#voiceover("Bearish news and analysis,")]
#only("8")[#voiceover("and historical data that suggests their view might be wrong.")]
#only("9")[#voiceover("As a result, the trader might stick to their original belief and trading strategy, even if it starts leading to losses.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Avoiding Confirmation Bias]
#v(40pt)
#only("1-")[How can traders avoid confirmation bias? 🧐]
#v(20pt)
#only("2-")[- Actively seek out contrary information and opinions 🔍]
#v(20pt)
#only("3-")[- Consider alternative hypotheses 🤔]
#v(20pt)
#only("4-")[- Be open to changing your mind based on new evidence 🧠]
#v(20pt)
#only("5-")[- Use objective decision-making criteria 📏]
#v(20pt)
#only("6-")[- Be aware of your own biases and emotional attachments 🎭]

#only("1")[#voiceover("So how can traders avoid falling prey to confirmation bias?")]
#only("2")[#voiceover("One key strategy is to actively seek out information and opinions that contradict your existing beliefs. Don't just look for information that confirms what you already think.")]
#only("3")[#voiceover("Try to consider alternative hypotheses and explanations. Ask yourself, 'What if I'm wrong? What would that look like?'")]
#only("4")[#voiceover("Be open to changing your mind when presented with new, compelling evidence. Don't get too attached to your initial ideas.")]
#only("5")[#voiceover("Use objective, predefined criteria for making trading decisions. This can help prevent your biases from overly influencing your choices.")]
#only("6")[#voiceover("Finally, try to be aware of your own biases and emotional attachments. We all have them, but being conscious of them can help you counteract their effects.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Confirmation bias: tendency to favor information that confirms preexisting beliefs 📈]
#v(20pt)
#only("2-")[- Can lead traders to ignore contrary evidence and stick to losing strategies 📉]
#v(20pt)
#only("3-")[- Seek diverse information, consider alternatives, and use objective criteria to avoid bias 🧠]
#v(20pt)
#only("4-")[- Self-awareness is key to mitigating the effects of confirmation bias 🎭]

#only("1")[#voiceover("To sum up, confirmation bias is the tendency to favor information that confirms what we already believe.")]
#only("2")[#voiceover("For traders, this can lead to ignoring contrary evidence and sticking with strategies even when they're not working.")]
#only("3")[#voiceover("To avoid confirmation bias, seek out diverse information, consider alternative hypotheses, and use objective decision-making criteria.")]
#only("4")[#voiceover("And perhaps most importantly, be aware of your own biases. Recognizing them is the first step to preventing them from negatively impacting your trading.")]
]