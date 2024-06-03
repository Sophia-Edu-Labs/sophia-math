#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion]
#v(40pt)
What does loss aversion refer to?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Prefer gains over losses]#only("2-")[#text(fill:red)[a) Prefer gains over losses]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Avoid losses more than acquiring gains]#only("3-")[#text(fill:green)[b) Avoid losses more than acquiring gains]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Follow the crowd]#only("4-")[#text(fill:red)[c) Follow the crowd]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Make rational decisions]#only("5-")[#text(fill:red)[d) Make rational decisions]]

#only("1")[#voiceover("That's not quite right. Let's take a look at the correct solution.")]
#only("2")[#voiceover("Option a) Prefer gains over losses is incorrect. Loss aversion actually implies the opposite - people tend to prefer avoiding losses over acquiring equivalent gains.")]
#only("3")[#voiceover("Option b) Avoid losses more than acquiring gains is the correct answer. Loss aversion refers to people's tendency to prefer avoiding losses to acquiring equivalent gains. In other words, it's better to not lose \$5 than to find \$5.")]
#only("4")[#voiceover("Option c) Follow the crowd is incorrect. This describes herd behavior, not loss aversion.")]
#only("5")[#voiceover("Option d) Make rational decisions is also incorrect. Loss aversion is a bias that leads to irrational decisions, not rational ones.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[Loss Aversion: 🧠💰]
#v(20pt)
#only("2-")[- People hate losing more than they like winning]
#v(20pt)
#only("3-")[- Losing \$100 feels worse than gaining \$100 feels good]
#v(20pt)
#only("4-")[- Leads to irrational decisions to avoid losses]

#only("1")[#voiceover("Let's dive deeper into loss aversion.")]
#only("2")[#voiceover("Loss aversion is a cognitive bias where people tend to hate losing more than they like winning.")]
#only("3")[#voiceover("For example, the pain of losing \$100 is psychologically about twice as powerful as the pleasure of gaining \$100.")]
#only("4")[#voiceover("This bias can lead investors to make irrational decisions in an effort to avoid losses, even if it means missing out on potential gains.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Implications]
#v(40pt)
#only("1-")[- Investors hold losing stocks too long 📉]
#v(20pt)
#only("2-")[- Investors sell winning stocks too early 📈]
#v(20pt)
#only("3-")[- Leads to suboptimal portfolios 📊]
#v(20pt)
#only("4-")[- Important to be aware of and manage this bias 🧠]

#only("1")[#voiceover("One implication of loss aversion is that investors tend to hold on to losing stocks for too long, hoping to get back to even.")]
#only("2")[#voiceover("On the flip side, investors may sell winning stocks too early to 'lock in' the gain and avoid the possibility of a future loss.")]
#only("3")[#voiceover("Over time, this can lead to suboptimal portfolios that don't maximize potential returns.")]
#only("4")[#voiceover("As an investor, it's important to be aware of loss aversion and actively manage this bias in your decision making. Stick to your investment plan and don't let the fear of losses drive your choices.")]
]