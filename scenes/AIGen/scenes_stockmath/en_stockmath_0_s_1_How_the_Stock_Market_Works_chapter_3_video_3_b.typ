#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Unfortunately, that wasn't quite right. Let's go through the correct solution to understand how economic conditions affect stock prices.")
]

#text(size: 30pt, weight: "bold")[Economic Conditions & Stock Prices]

#v(40pt)

#only("2-")[- Interest rates 📈]
#only("3-")[- Inflation 💸]
#only("4-")[- Economic growth 📊]
#only("5-")[- Consumer confidence 😊]

#only("2")[
#voiceover("First, let's consider interest rates. When interest rates are low, it becomes cheaper for companies to borrow money, which can lead to expansion and growth, potentially driving up stock prices. Conversely, high interest rates can slow corporate growth and negatively impact stock prices.")
]

#only("3")[
#voiceover("Next, inflation. High inflation can lead to increased costs for companies, which can squeeze profit margins and negatively affect stock prices if companies can't pass on these costs to consumers. On the other hand, moderate inflation can indicate a growing economy, which could boost stock prices.")
]

#only("4")[
#voiceover("Economic growth is another key factor. Strong economic growth usually bodes well for companies as it can lead to increased revenues and profits, which can drive up stock prices. However, if growth is too rapid, it can lead to inflation concerns.")
]

#only("5")[
#voiceover("Finally, consumer confidence plays a role. When consumers are confident, they tend to spend more, which can boost corporate revenues and stock prices. But when confidence is low, consumers may cut back on spending, negatively impacting company performance and stock prices.")
]

]

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Relationships]

#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

factors = ['Interest Rates', 'Inflation', 'Economic Growth', 'Consumer Confidence']
impact = [0.7, 0.6, 0.8, 0.75]  # Assumed impact scores for illustration

plt.figure(figsize=(10, 6))
plt.bar(factors, impact, color='skyblue')
plt.axhline(0, color='black', linewidth=0.8)  # Add a horizontal line at 0
plt.ylim(-1, 1)  # Set the y-axis limits
plt.ylabel('Impact on Stock Prices')
plt.title('Impact of Economic Factors on Stock Prices')

for i, v in enumerate(impact):
    plt.text(i, v+0.05, f'{v}', ha='center')  # Add impact scores above bars

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Here's a simplified visualization of how these factors might impact stock prices. A positive score indicates a potential boost to stock prices, while a negative score suggests a possible negative impact.")
]

#only("2")[
#voiceover("Of course, the actual relationships are much more complex and can vary depending on the specific economic conditions and company. But this provides a general framework for understanding how changes in the economy can flow through to the stock market.")
]

]
]

#slide()[

#text(size: 30pt, weight: "bold")[Key Takeaways]

#v(40pt)

#only("1-")[- Economic conditions have a significant impact on stock prices 📈📉]
#only("2-")[- Interest rates, inflation, economic growth, and consumer confidence are key factors 🔑]
#only("3-")[- The relationships are complex and can vary depending on the specifics 🌐]
#only("4-")[- Understanding these relationships is crucial for investors 🎓]

#only("1")[
#voiceover("In summary, economic conditions have a significant impact on stock prices.")
]

#only("2")[
#voiceover("Key factors to watch include interest rates, inflation, economic growth, and consumer confidence.")
]

#only("3")[
#voiceover("The relationships between these factors and stock prices are complex and can vary depending on the specific circumstances.")
]

#only("4")[
#voiceover("But understanding these general relationships is crucial for investors looking to navigate the stock market during changing economic times.")
]

]