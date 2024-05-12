#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[P/E Ratios Vary Across Industries]
#v(40pt)
#only("1-")[- Different industries have different characteristics 🏭🏢🏪]
#v(20pt)
#only("2-")[- Growth prospects, competition, regulation, etc. affect P/E 📈📉]
#only("1")[
#voiceover("Price-to-Earnings ratios can vary widely across different industries. This is because each industry has its own unique characteristics.")
]
#only("2")[
#voiceover("Factors such as growth prospects, level of competition, regulatory environment, and more can all affect the typical P/E ratio in an industry.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: Tech vs. Utilities]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

industries = ['Tech', 'Utilities']
pe_ratios = [25, 15]

plt.figure(figsize=(6, 4))
plt.bar(industries, pe_ratios, color=['#1f77b4', '#ff7f0e'], width=0.4)
plt.ylabel('P/E Ratio')
plt.title('Average P/E Ratios by Industry')
plt.ylim(0, 30)
for i, v in enumerate(pe_ratios):
    plt.text(i, v + 0.5, str(v), ha='center')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("For example, the technology sector often has higher P/E ratios than the utilities sector. In this example, the average P/E in tech is 25, while in utilities it's 15.")
]
#v(20pt)
#only("2-")[- Tech: High growth expectations → Higher P/E 📈]
#v(20pt)
#only("3-")[- Utilities: Stable, regulated → Lower P/E 🔌]
#only("2")[
#voiceover("Tech companies often have high growth expectations, which can justify higher P/E ratios.")
]
#only("3")[
#voiceover("Utilities, on the other hand, are typically more stable and regulated, leading to lower P/E ratios.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Comparing P/Es Within Industries]
#v(40pt)
#only("1-")[- Compare companies within the same industry 🍎🍎]
#v(20pt)
#only("2-")[- Example: If industry average is 20, P/E of 15 might be undervalued 📉]
#v(20pt)
#only("3-")[- But if industry average is 10, P/E of 15 might be overvalued 📈]
#only("1")[
#voiceover("Because of these differences, it's most meaningful to compare P/E ratios of companies within the same industry.")
]
#only("2")[
#voiceover("For instance, if the industry average P/E is 20, a company with a P/E of 15 might be considered undervalued.")
]
#only("3")[
#voiceover("However, if the industry average is 10, a P/E of 15 could suggest overvaluation.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- P/E ratios vary by industry due to different characteristics 🏭🏢🏪]
#v(20pt)
#only("2-")[- Compare P/Es within industries for meaningful analysis 🍎🍎]
#v(20pt)
#only("3-")[- Consider industry context when interpreting P/E ratios 📊]
#only("1")[
#voiceover("In summary, P/E ratios can vary significantly by industry due to different industry characteristics.")
]
#only("2")[
#voiceover("For the most meaningful analysis, compare P/E ratios of companies within the same industry.")
]
#only("3")[
#voiceover("Always consider the industry context when interpreting P/E ratios.")
]
]