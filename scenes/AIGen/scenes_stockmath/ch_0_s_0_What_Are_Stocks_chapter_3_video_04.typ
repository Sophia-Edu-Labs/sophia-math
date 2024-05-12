#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Types of Stocks 📈]

#v(40pt)

#only("1-")[- Common Stocks 🗳️]
#only("2-")[    - Voting rights ✅]
#only("3-")[    - Potential dividends 💰]

#v(20pt)

#only("4-")[- Preferred Stocks 🏆]
#only("5-")[    - Higher dividend priority 🥇]
#only("6-")[    - No voting rights ❌]

#only("1")[
#voiceover("Let's recap the two main types of stocks: common stocks and preferred stocks.")
]

#only("2")[
#voiceover("Common stocks come with voting rights, allowing shareholders to participate in company decisions.")
]

#only("3")[
#voiceover("They also offer potential dividends, but these are not guaranteed and are paid after preferred shareholders.")
]

#only("4")[
#voiceover("On the other hand, preferred stocks...")
]

#only("5")[
#voiceover("...have a higher priority when it comes to receiving dividends. They are paid before common stockholders.")
]

#only("6")[
#voiceover("However, preferred stockholders typically do not have voting rights in the company.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Comparison 🔍]

#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

labels = ['Voting Rights', 'Dividend Priority']
common_stocks = [1, 0] 
preferred_stocks = [0, 1]

x = np.arange(len(labels))  
width = 0.35  

fig, ax = plt.subplots()
rects1 = ax.bar(x - width/2, common_stocks, width, label='Common Stocks', color='b')
rects2 = ax.bar(x + width/2, preferred_stocks, width, label='Preferred Stocks', color='g')

ax.set_ylabel('Presence')
ax.set_title('Stock Type Comparison')
ax.set_xticks(x)
ax.set_xticklabels(labels)
ax.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]

#only("1")[
#voiceover("This graph compares the key characteristics of common and preferred stocks.")
]

#only("2")[
#voiceover("Common stocks, represented by the blue bars, have voting rights but lower dividend priority.")
]

#only("3")[
#voiceover("Preferred stocks, shown in green, have higher dividend priority but no voting rights.")
]

#only("4")[
#voiceover("Understanding these differences is crucial for investors when deciding which type of stock to invest in, based on their financial goals and desired level of involvement in the company.")
]
]