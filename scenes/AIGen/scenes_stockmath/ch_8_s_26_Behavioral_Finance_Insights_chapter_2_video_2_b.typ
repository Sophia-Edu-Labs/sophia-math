#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion in Trading]
#v(40pt)
#only("1-")[How can loss aversion affect trading strategies?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) By encouraging diversified portfolios]#only("2-")[#text(fill:red)[a) By encouraging diversified portfolios]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) By causing delay in selling losing stocks]#only("3-")[#text(fill:green)[b) By causing delay in selling losing stocks]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) By promoting frequent trading]#only("4-")[#text(fill:red)[c) By promoting frequent trading]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) By reducing investment in stocks]#only("5-")[#text(fill:red)[d) By reducing investment in stocks]]
#v(40pt)

#only("1")[#voiceover("That's right, great job! The correct answer is...")]
#only("2")[#voiceover("a) By encouraging diversified portfolios is incorrect. Loss aversion typically leads to less diversification, as investors tend to hold on to losing investments too long.")]
#only("3")[#voiceover("b) By causing delay in selling losing stocks. This is the correct answer. Loss aversion can cause investors to hold on to losing stocks for too long, hoping they will recover their losses.")]
#only("4")[#voiceover("c) By promoting frequent trading is incorrect. Loss aversion usually leads to less trading, as investors are reluctant to realize their losses.")]
#only("5")[#voiceover("And d) By reducing investment in stocks is also incorrect. While loss aversion can lead to a reluctance to invest, it doesn't necessarily reduce overall investment in stocks.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion Explained]
#v(40pt)
#only("1-")[Loss aversion is the tendency to...]
#v(20pt)
#only("2-")[- Prefer avoiding losses to acquiring equivalent gains 📉]
#only("3-")[- Feel the pain of a loss more intensely than the pleasure of a gain 😞 > 😊]
#only("4-")[- Hold on to losing investments too long, hoping to break even 🤞]
#only("5-")[- Avoid selling stocks that have decreased in value 📉🚫]

#only("1")[#voiceover("Let's dive deeper into loss aversion and how it affects trading behavior.")]
#only("2")[#voiceover("Loss aversion is the tendency to strongly prefer avoiding losses to acquiring equivalent gains. In other words, the pain of losing is psychologically about twice as powerful as the pleasure of gaining.")]
#only("3")[#voiceover("This means that investors feel the negative impact of a loss much more intensely than the positive impact of an equivalent gain.")]
#only("4")[#voiceover("Due to this, loss-averse investors often hold on to losing investments for too long, hoping that they will eventually break even.")]
#only("5")[#voiceover("They avoid selling stocks that have decreased in value, even if the rational decision would be to sell and invest the money elsewhere. This can lead to suboptimal trading strategies and lower returns over time.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Loss aversion is a powerful psychological bias 🧠]
#v(20pt)
#only("2-")[- It can lead to irrational trading decisions 📊❌]
#v(20pt)
#only("3-")[- Investors should be aware of their own loss aversion 🤔]
#v(20pt)
#only("4-")[- Strategies like setting stop-losses can help mitigate its effects 📉🛑]

#only("1")[#voiceover("To summarize, loss aversion is a powerful psychological bias that affects many investors.")]
#only("2")[#voiceover("It can lead to irrational trading decisions, such as holding on to losing stocks for too long.")]
#only("3")[#voiceover("Investors should be aware of their own tendency towards loss aversion and how it might affect their trading strategies.")]
#only("4")[#voiceover("Implementing strategies like setting stop-losses can help mitigate the negative effects of loss aversion and lead to more rational, profitable trading decisions over time.")]
]