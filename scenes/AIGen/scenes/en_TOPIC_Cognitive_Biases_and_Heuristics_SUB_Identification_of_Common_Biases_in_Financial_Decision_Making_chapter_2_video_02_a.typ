#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Confirmation Bias]
#v(40pt)
#only("1-")[What is confirmation bias?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Seeking information that contradicts one's beliefs]#only("2-")[#text(fill:red)[a) Seeking information that contradicts one's beliefs]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Ignoring information]#only("3-")[#text(fill:red)[b) Ignoring information]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) Seeking information that confirms one's beliefs]#only("4-")[#text(fill:green)[c) Seeking information that confirms one's beliefs]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]
#only("1")[#voiceover("Not quite, but don't worry! Let's look at the correct solution.")]
#only("2")[#voiceover("Option a) is incorrect. Seeking information that contradicts one's beliefs is actually the opposite of confirmation bias.")]
#only("3")[#voiceover("Option b) is also incorrect. While ignoring information can be a part of confirmation bias, it's not the complete definition.")]
#only("4")[#voiceover("Option c) is the correct answer. Confirmation bias is indeed the tendency to seek out information that confirms one's preexisting beliefs. 👍")]
#only("5")[#voiceover("And option d) is incorrect, as one of the above options (c) is the correct definition of confirmation bias.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Confirmation Bias Explained]
#v(40pt)
#only("1-")[- Tendency to search for, interpret, favor, and recall information that confirms or supports one's prior beliefs or values 🔍]
#v(20pt)
#only("2-")[- Gives more attention to evidence that supports what one already believes 👀]
#v(20pt)
#only("3-")[- Discounts or ignores evidence that contradicts one's beliefs 🙈]
#v(20pt)
#only("4-")[- Can lead to overconfidence in personal beliefs and maintain or strengthen beliefs in the face of contrary evidence 🧠]

#only("1")[#voiceover("Confirmation bias is the tendency to search for, interpret, favor, and recall information in a way that confirms or supports one's prior beliefs or values.")]
#only("2")[#voiceover("People displaying this bias tend to give more attention to evidence that supports what they already believe.")]
#only("3")[#voiceover("On the flip side, they discount or completely ignore evidence that contradicts their beliefs.")]
#only("4")[#voiceover("This bias can lead to overconfidence in personal beliefs and can maintain or strengthen beliefs in the face of contrary evidence. It's a very common bias that affects many areas of our lives, including financial decision-making. 💰")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example in Financial Decision-Making]
#v(40pt)
#only("1-")[- Investor believes a certain stock will perform well 📈]
#v(20pt)
#only("2-")[- Seeks out information that supports this belief (positive news, analyst reports, etc.) 📰]
#v(20pt)
#only("3-")[- Ignores or downplays information that contradicts this belief (negative news, conflicting analyst reports, etc.) 📉]
#v(20pt)
#only("4-")[- Leads to overconfidence in the stock and potentially poor investment decisions 💸]

#only("1")[#voiceover("Here's an example of how confirmation bias can play out in financial decision-making. Let's say an investor believes a certain stock will perform well.")]
#only("2")[#voiceover("Due to confirmation bias, the investor might seek out information that supports this belief, such as positive news articles or analyst reports about the stock.")]
#only("3")[#voiceover("At the same time, the investor might ignore or downplay information that contradicts their belief, like negative news or conflicting analyst reports.")]
#only("4")[#voiceover("This can lead to overconfidence in the stock and potentially poor investment decisions if the investor's belief is not aligned with the reality of the stock's performance. That's why it's important to be aware of confirmation bias and actively seek out diverse perspectives when making financial decisions. 🤔")]
]