#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Price-to-Earnings (P/E) Ratio]
#v(40pt)
#only("1-")[- Measures investor willingness to pay per dollar of earnings 💸]
#v(20pt)
#only("2-")[- Formula: $P/E = ("Stock Price" 📈) / ("Earnings per Share" 📊)$]
#v(20pt)
#only("3-")[- Higher P/E → More value placed on company's earnings power 📈🔍]
#only("1")[
#voiceover("The Price-to-Earnings Ratio, or P/E Ratio, is a key metric that measures how much investors are willing to pay for each dollar of a company's earnings.")
]
#only("2")[
#voiceover("It's calculated by dividing the current stock price by the earnings per share. For example, if a stock trades at $50 and has earnings per share of $5, the P/E ratio would be 10.")
]
#only("3")[
#voiceover("A higher P/E ratio indicates that investors are placing more value on the company's earnings power and are willing to pay a premium for the stock.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Interpreting P/E Ratios]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

companies = ['Company A', 'Company B', 'Company C']
pe_ratios = [30, 15, 22]

plt.figure(figsize=(10, 6))
plt.bar(companies, pe_ratios, color=['skyblue', 'lightgreen', 'salmon'])
plt.title('P/E Ratios of Different Companies')
plt.xlabel('Company')
plt.ylabel('P/E Ratio')
plt.grid(True, axis='y', linestyle='--', alpha=0.7)

for i, v in enumerate(pe_ratios):
    plt.text(i, v + 0.5, str(v), ha='center')

plt.tight_layout()
plt.show()
```, width: 360pt),
)
]
]
#only("1")[
#voiceover("Let's look at an example. Here we have three companies with different P/E ratios. Company A has a high P/E of 30, suggesting investors expect strong future growth. Company B has a lower P/E of 15, which could mean it's undervalued or facing challenges. Company C's P/E of 22 is in the middle range.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- P/E Ratio: Investor payment per dollar of earnings 💰]
#v(20pt)
#only("2-")[- Higher P/E: More value on earnings, growth expectations 📈]
#v(20pt)
#only("3-")[- Lower P/E: Undervaluation or company challenges ⚠]
#v(20pt)
#only("4-")[- Compare P/Es within industries for meaningful insights 🔍📊]
#only("1")[
#voiceover("To recap, the P/E ratio tells us how much investors are paying for each dollar of a company's earnings.")
]
#only("2")[
#voiceover("A higher P/E generally means investors are placing more value on the company's earnings and expecting future growth.")
]
#only("3")[
#voiceover("Conversely, a lower P/E could signify that the stock is undervalued or the company is facing challenges.")
]
#only("4")[
#voiceover("It's important to compare P/E ratios within the same industry for the most meaningful insights, as ratios can vary widely across different sectors.")
]
]