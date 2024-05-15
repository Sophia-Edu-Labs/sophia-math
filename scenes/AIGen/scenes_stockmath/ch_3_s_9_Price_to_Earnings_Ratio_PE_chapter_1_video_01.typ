#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[High P/E Ratio 📈]
#v(40pt)
#only("1-")[- Market expects future growth in earnings 💰]
#v(20pt)
#only("2-")[- Investors willing to pay more for each dollar of current earnings 💸]
#v(20pt)
#only("3-")[- Example: Tech startups often have high P/E ratios 🚀]
#only("1")[
#voiceover("A high Price-to-Earnings ratio, or P/E ratio, often indicates that the market expects the company to have significant growth in earnings in the future.")
]
#only("2")[
#voiceover("This means that investors are willing to pay more for each dollar of the company's current earnings, anticipating higher profits down the line.")
]
#only("3")[
#voiceover("For example, tech startups often have high P/E ratios because investors believe in their potential for rapid growth, even if current earnings are low.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Low P/E Ratio 📉]
#v(40pt)
#only("1-")[- Stock may be undervalued 💎]
#v(20pt)
#only("2-")[- Company may be facing challenges or slower growth 🐌]
#v(20pt)
#only("3-")[- Example: Established companies in mature industries often have lower P/E ratios 🏭]
#only("1")[
#voiceover("On the other hand, a low P/E ratio might suggest that a stock is undervalued.")
]
#only("2")[
#voiceover("It could also mean that the company is facing challenges or is expected to have slower growth in the future.")
]
#only("3")[
#voiceover("Established companies in mature industries, for instance, often have lower P/E ratios because their growth prospects are more limited.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

companies = ['Tech Startup', 'Established Company']
pes = [50, 15]

fig, ax = plt.subplots(figsize=(6, 4))
ax.bar(companies, pes, color=['skyblue', 'lightgreen'])
ax.set_ylabel('P/E Ratio')
ax.set_title('P/E Ratios: High vs Low')

for i, v in enumerate(pes):
    ax.text(i, v + 1, str(v), color='black', fontweight='bold', ha='center')

plt.tight_layout()
plt.show()
```, width: 360pt),)
]
]
#only("1")[
#voiceover("This graph compares the typical P/E ratios of a tech startup and an established company. The tech startup has a much higher P/E ratio, reflecting high growth expectations, while the established company has a lower P/E, indicating more modest growth prospects.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- High P/E: Market expects future growth 📈]
#v(20pt)
#only("2-")[- Low P/E: Stock may be undervalued or company facing challenges 📉]
#v(20pt)
#only("3-")[- P/E ratios provide insights into market expectations and valuation 🎯]
#only("1")[
#voiceover("In summary, a high P/E ratio suggests that the market expects substantial future growth in earnings.")
]
#only("2")[
#voiceover("A low P/E ratio, in contrast, could mean the stock is undervalued or that the company is facing challenges.")
]
#only("3")[
#voiceover("P/E ratios provide valuable insights into market expectations and the valuation of a company. However, it's important to consider other factors and the company's industry when interpreting P/E ratios.")
]
]