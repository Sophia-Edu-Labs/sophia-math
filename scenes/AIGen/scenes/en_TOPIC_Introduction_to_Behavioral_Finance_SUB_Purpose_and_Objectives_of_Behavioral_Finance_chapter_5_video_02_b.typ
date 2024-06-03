#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mitigating Biases]
#v(40pt)
Which of the following is a strategy to mitigate biases in Behavioral Finance?
#v(40pt)
#only("-1")[a) Ignoring biases]#only("2-")[#text(fill:red)[a) Ignoring biases]]
#v(10pt)
#only("-1")[b) Education and awareness]#only("2-")[#text(fill:green)[b) Education and awareness]]
#v(10pt)  
#only("-1")[c) Predicting stock prices]#only("3-")[#text(fill:red)[c) Predicting stock prices]]
#v(10pt)
#only("-1")[d) Calculating interest rates]#only("4-")[#text(fill:red)[d) Calculating interest rates]]
#v(40pt)

#only("1")[#voiceover("Excellent! You've chosen the correct answer.")]
#only("2")[#voiceover("Option b) Education and awareness is indeed a key strategy to mitigate biases in Behavioral Finance. By educating investors about common biases and raising awareness about their potential impact, we can help them make more rational decisions.")]
#only("3")[#voiceover("Option c) Predicting stock prices is not a strategy to mitigate biases. In fact, overconfidence in one's ability to predict stock prices is itself a common bias in Behavioral Finance.")]
#only("4")[#voiceover("Option d) Calculating interest rates is also not a bias mitigation strategy. It's a financial calculation, but it doesn't directly address the psychological biases that investors may face.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Strategies to Mitigate Biases 🧠💡]
#v(40pt)  
#only("1-")[- Education 📚]
#v(20pt)
#only("2-")[- Awareness 🔍]
#v(20pt)
#only("3-")[- Decision-making frameworks 🧩]
#v(40pt)

#only("1")[#voiceover("The key strategies to mitigate biases in Behavioral Finance include education, awareness, and the use of decision-making frameworks.")]
#only("2")[#voiceover("Education involves teaching investors about common biases and how they can impact financial decisions. This can help them recognize and avoid these biases in their own decision-making.")]
#only("3")[#voiceover("Awareness is about being constantly vigilant about one's own potential biases. By being aware of the possibility of biased thinking, investors can take steps to counteract it.")]
#only("4")[#voiceover("Decision-making frameworks provide structured approaches to analyze investments. By following a systematic process, investors can reduce the influence of biases on their decisions.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Importance of Mitigating Biases 📈]
#v(40pt)
#only("1-")[- Improve investment decisions 📊]
#v(20pt)  
#only("2-")[- Reduce risk 🔻]
#v(20pt)
#only("3-")[- Enhance market efficiency 📈]
#v(40pt)

#only("1")[#voiceover("Mitigating biases is crucial in Behavioral Finance. It can lead to better investment decisions.")]
#only("2")[#voiceover("By reducing the influence of biases, investors can potentially lower their risk. They are less likely to make irrational decisions based on psychological factors.")]
#only("3")[#voiceover("On a broader scale, if more investors mitigate their biases, it can contribute to enhanced market efficiency. Prices in financial markets will more accurately reflect all available information, not just the biased perceptions of some investors.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance vs Traditional Finance 💰]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

labels = ['Behavioral Finance', 'Traditional Finance']
psychological_focus = [0.8, 0.2]

plt.figure(figsize=(6, 6))
plt.pie(psychological_focus, labels=labels, autopct='%1.1f%%', startangle=90, colors=['#66b3ff', '#ff9999'])
plt.axis('equal')
plt.title('Focus on Psychological Factors')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Remember, Behavioral Finance differs from Traditional Finance in its focus on psychological factors.")]
#only("2")[#voiceover("While Traditional Finance assumes investors are always rational, Behavioral Finance recognizes that psychological biases can significantly influence investor behavior.")]
#only("3")[#voiceover("That's why mitigating these biases is a central concern in Behavioral Finance, but not in Traditional Finance.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap 🎓]
#v(40pt)  
#only("1-")[- Education and awareness are key strategies to mitigate biases 🔑]
#v(20pt)
#only("2-")[- Mitigating biases can improve investment decisions and reduce risk ⬆]
#v(20pt)  
#only("3-")[- Behavioral Finance focuses on psychological factors, unlike Traditional Finance 🧠 vs 📈]
#v(40pt)

#only("1")[#voiceover("To recap, education and awareness are key strategies to mitigate the biases studied in Behavioral Finance.")]
#only("2")[#voiceover("By mitigating these biases, investors can potentially improve their investment decisions and reduce their risk.")]
#only("3")[#voiceover("This focus on psychological factors is what sets Behavioral Finance apart from Traditional Finance.")]
#only("4")[#voiceover("Great job on identifying the correct answer and learning about bias mitigation in Behavioral Finance!")]
]