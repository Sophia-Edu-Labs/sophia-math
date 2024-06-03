#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance vs Market Efficiency]
#v(40pt)
#only("1-")[How does Behavioral Finance challenge market efficiency?]
#v(40pt)

// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) By assuming rational behavior]#only("2-")[#text(fill:red)[a) By assuming rational behavior]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) By showing that markets are influenced by irrational behavior]#only("3-")[#text(fill:green)[b) By showing that markets are influenced by irrational behavior]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) By predicting stock prices]#only("4-")[#text(fill:red)[c) By predicting stock prices]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) By calculating financial ratios]#only("5-")[#text(fill:red)[d) By calculating financial ratios]]

#only("1")[#voiceover("Excellent, that's the correct answer!")]
// Very briefly Talk about b and why it is correct
#only("2-3")[#voiceover("Behavioral Finance challenges market efficiency by showing that markets are often influenced by irrational behavior, rather than assuming that all investors behave rationally.")]
// Very briefly Talk about a and why it is incorrect
#only("4")[#voiceover("Assuming rational behavior aligns more with the traditional view of market efficiency, not Behavioral Finance which recognizes irrational influences.")]
// Very briefly Talk about c and why it is incorrect 
#only("5")[#voiceover("While Behavioral Finance may help understand market anomalies, its primary focus is not on predicting stock prices or calculating financial ratios.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Irrational Behavior in Markets 📈🧠]
#v(40pt)
#only("1-")[Behavioral Finance suggests markets are influenced by:]
#v(20pt)
#only("2-")[- Psychological biases 🧠]
#only("3-")[- Herd behavior 🐑]
#only("4-")[- Emotional decision-making 😨]
#v(40pt)
#only("5-")[This leads to market anomalies like bubbles and crashes 📉💥]

#only("1")[#voiceover("Let's look at how Behavioral Finance challenges the notion of market efficiency in more detail.")]
#only("2")[#voiceover("Behavioral Finance suggests that markets are influenced by various psychological biases that investors hold.")]
#only("3")[#voiceover("It also recognizes the impact of herd behavior, where investors follow the crowd rather than making independent decisions.")]
#only("4")[#voiceover("Emotional factors like fear and greed can also drive irrational decision-making in markets.")]
#only("5")[#voiceover("These irrational behaviors can lead to market anomalies such as asset bubbles and market crashes, challenging the idea of efficient markets.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Market Efficiency vs Behavioral Finance]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

categories = ['Investor Rationality', 'Market Anomalies', 'Psychological Factors']

traditional_scores = [5, 2, 1]  
behavioral_scores = [2, 5, 5]

x = np.arange(len(categories))  
width = 0.35  

fig, ax = plt.subplots(figsize=(10,6))
rects1 = ax.bar(x - width/2, traditional_scores, width, label='Traditional Finance', color='skyblue')
rects2 = ax.bar(x + width/2, behavioral_scores, width, label='Behavioral Finance', color='lightgreen')

ax.set_ylabel('Emphasis', fontsize=14)
ax.set_title('Traditional Finance vs Behavioral Finance', fontsize=16)
ax.set_xticks(x)
ax.set_xticklabels(categories, fontsize=12)
ax.legend(fontsize=12)

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

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1")[#voiceover("This graph compares the emphasis of Traditional Finance and Behavioral Finance on different aspects.")]
#only("2-")[- Traditional Finance assumes investor rationality 🧠]
#only("3-")[- Behavioral Finance emphasizes psychological factors 🧠😨]
#only("4-")[- Behavioral Finance better explains market anomalies 📈📉]

#only("2")[#voiceover("Traditional Finance places a high emphasis on investor rationality, assuming that investors make logical, unbiased decisions.")]
#only("3")[#voiceover("In contrast, Behavioral Finance heavily emphasizes the role of psychological factors in driving investor behavior.")]
#only("4")[#voiceover("Behavioral Finance also puts more weight on explaining market anomalies that Traditional Finance struggles to account for, like bubbles and crashes.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Behavioral Finance challenges market efficiency 📈🧠]
#only("2-")[- It shows markets are influenced by irrational behavior 😨📉]
#only("3-")[- Psychological biases, herd behavior, emotions play a role 🧠🐑😨]
#only("4-")[- This contrasts with Traditional Finance's assumption of rationality 🧠📈]
#only("5-")[- Behavioral Finance better explains market anomalies 📈📉💥]

#only("1")[#voiceover("To summarize, Behavioral Finance challenges the concept of market efficiency")]
#only("2")[#voiceover("by showing that markets are often influenced by irrational investor behavior,")]
#only("3")[#voiceover("driven by factors like psychological biases, herd mentality, and emotions.")]
#only("4")[#voiceover("This stands in contrast to Traditional Finance, which assumes investor rationality.")]
#only("5")[#voiceover("Behavioral Finance provides a framework to better understand and explain market anomalies that Traditional Finance struggles to account for.")]
]