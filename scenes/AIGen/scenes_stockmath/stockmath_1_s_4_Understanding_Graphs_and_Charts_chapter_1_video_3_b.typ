#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Comparing Trade Volumes]
#v(40pt)
#only("1-")[If you want to compare the volumes of trades for different stocks on the same chart, which chart type would be most effective?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) Line chart]#only("2-")[#text(fill:red)[a) Line chart]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Bar chart]#only("3-")[#text(fill:green)[b) Bar chart]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) Pie chart]#only("4-")[#text(fill:red)[c) Pie chart]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) Scatter chart]#only("5-")[#text(fill:red)[d) Scatter chart]]
#only("1")[#voiceover("That's correct! Great job.")]
#only("2")[#voiceover("A line chart is not the best choice here. While it can show trends over time, it's less effective for comparing discrete categories like different stocks.")]
#only("3")[#voiceover("A bar chart is indeed the most effective for comparing the trade volumes of different stocks. Each stock can be represented by a bar, with the height of the bar indicating the volume.")]
#only("4")[#voiceover("A pie chart is not suitable in this case. Pie charts are used to show parts of a whole, but here we want to compare separate entities (stocks), not parts of a total volume.")]
#only("5")[#voiceover("A scatter chart is also not the best fit. Scatter charts are great for showing the relationship between two variables, but here we're more interested in comparing single values (volumes) across categories (stocks).")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Why Bar Charts? 📊]
#v(40pt)
#only("1-")[
- Effective for comparing quantities across categories
- Each category gets its own bar
- Bar height represents the quantity
]
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

stocks = ['Stock A', 'Stock B', 'Stock C', 'Stock D', 'Stock E']
volumes = [100, 80, 60, 40, 20]

plt.figure(figsize=(8, 6))
plt.bar(stocks, volumes)
plt.title('Trade Volumes by Stock')
plt.xlabel('Stocks')
plt.ylabel('Volume')
plt.grid(axis='y', linestyle='--', alpha=0.7)
plt.show()
```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Bar charts are great for comparing quantities across different categories. Each category, in this case each stock, gets its own bar. And the height of each bar represents the quantity we're interested in, here the trade volume.")]

#only("2")[#voiceover("Here's an example. We have five stocks, A through E, and their respective trade volumes. The bar chart makes it easy to see which stock had the highest volume (Stock A) and how the volumes compare across the stocks.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[
- Student chose correctly: Bar chart 🎉
- Bar charts are best for comparing quantities across categories 📊
- Other options (line, pie, scatter) less suitable for this purpose ❌
]

#only("1")[#voiceover("To recap, you correctly identified that a bar chart would be most effective for comparing trade volumes of different stocks. Bar charts excel at comparing quantities across distinct categories. The other chart types mentioned - line, pie, and scatter plots - are less suitable for this specific purpose. Well done!")]
]