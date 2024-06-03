#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance Importance]
#v(40pt)
#only("1-")[Why is Behavioral Finance important?]
#v(40pt)
#only("-1")[a) It predicts stock prices]#only("2-")[#text(fill:red)[a) It predicts stock prices]]
#v(10pt)
#only("-2")[b) It provides a realistic understanding of financial markets]#only("3-")[#text(fill:green)[b) It provides a realistic understanding of financial markets]]
#v(10pt)
#only("-3")[c) It calculates financial ratios]#only("4-")[#text(fill:red)[c) It calculates financial ratios]]
#v(10pt)
#only("-4")[d) It analyzes economic policies]#only("5-")[#text(fill:red)[d) It analyzes economic policies]]
#v(40pt)
#only("1")[#voiceover("Great, that's correct! Let's see why.")]
#only("2")[#voiceover("Option a) is incorrect. While Behavioral Finance can help understand market movements, it doesn't directly predict stock prices.")]
#only("3")[#voiceover("Option b) is the correct answer. Behavioral Finance provides a more realistic understanding of financial markets by considering the psychological influences on investor behavior.")]
#only("4")[#voiceover("Option c) is incorrect. Calculating financial ratios is a part of financial analysis, but it's not the main focus of Behavioral Finance.")]
#only("5")[#voiceover("Option d) is also incorrect. While Behavioral Finance insights can inform economic policies, analyzing these policies is not its primary importance.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Why Behavioral Finance is Important]
#v(40pt)
#only("1-")[
- Traditional finance assumes investors are rational 🧠
]
#v(20pt)
#only("2-")[
- In reality, investors are often influenced by psychological biases 🎭
]
#v(20pt)
#only("3-")[
- Behavioral Finance studies these biases and their impact 🔍
]
#v(20pt)
#only("4-")[
- This leads to a more realistic understanding of financial markets 📈
]
#v(20pt)
#only("5-")[
- Insights can improve investment strategies, financial planning, and policy-making 💡
]
#only("1")[#voiceover("Traditional finance theories often assume that investors are rational and always make decisions that maximize their utility.")]
#only("2")[#voiceover("However, in the real world, investors are humans and are often influenced by various psychological biases and emotions.")]
#only("3")[#voiceover("Behavioral Finance studies these psychological influences and biases, and how they affect investor behavior and decision-making.")]
#only("4")[#voiceover("By considering these human factors, Behavioral Finance provides a more realistic understanding of how financial markets actually work.")]
#only("5")[#voiceover("The insights from Behavioral Finance can be used to improve investment strategies, financial planning, and even inform economic and financial policy-making.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance vs Traditional Finance]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

categories = ['Investor Rationality', 'Market Efficiency', 'Focus']
traditional = [3, 3, 1]
behavioral = [1, 1, 3]

x = np.arange(len(categories))  
width = 0.35  

fig, ax = plt.subplots(figsize=(10, 6))
rects1 = ax.bar(x - width/2, traditional, width, label='Traditional Finance', color='skyblue')
rects2 = ax.bar(x + width/2, behavioral, width, label='Behavioral Finance', color='lightgreen')

ax.set_ylabel('Level')
ax.set_title('Traditional Finance vs Behavioral Finance')
ax.set_xticks(x)
ax.set_xticklabels(categories)
ax.legend()

def autolabel(rects):
    for rect in rects:
        height = rect.get_height()
        ax.annotate('{}'.format(height),
                    xy=(rect.get_x() + rect.get_width() / 2, height),
                    xytext=(0, 3),  
                    textcoords="offset points",
                    ha='center', va='bottom')

autolabel(rects1)
autolabel(rects2)

fig.tight_layout()

plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[The graph compares Traditional and Behavioral Finance on key aspects:]
#v(20pt)
#only("2-")[
- Investor rationality 🧠
]
#v(10pt)
#only("3-")[  
- Market efficiency 📈
]
#v(10pt)
#only("4-")[
- Focus of study 🔍
]
#only("1")[#voiceover("This graph compares Traditional Finance and Behavioral Finance on three key aspects.")]
#only("2")[#voiceover("Traditional Finance assumes a high level of investor rationality, while Behavioral Finance considers investors to be less rational and more prone to biases.")]
#only("3")[#voiceover("Similarly, Traditional Finance believes in efficient markets, whereas Behavioral Finance suggests that markets can be inefficient due to psychological factors.")]
#only("4")[#voiceover("In terms of focus, Traditional Finance mainly studies how markets should work in theory, while Behavioral Finance focuses more on how markets and investors actually behave in practice.")]
]