#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Standard Deviation and Variance in Stock Market 📈]
#v(40pt)
#only("2-")[- Measure of dispersion or variability 📊]
#v(20pt)
#only("3-")[- Higher values indicate more volatility 📈📉]
#only("1")[
#voiceover("Standard deviation and variance are important statistical measures used to assess risk in stock market investments.")
]
#only("2")[
#voiceover("They quantify the dispersion or variability of stock prices over time.")
]
#only("3")[
#voiceover("Higher values of standard deviation and variance indicate more volatility in the stock prices.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Calculating Standard Deviation and Variance]
#v(40pt)
#only("1-")[#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate random stock prices
prices = np.random.normal(100, 10, 30)

# Calculate mean and standard deviation
mean = np.mean(prices)
std_dev = np.std(prices)

# Plot the stock prices
plt.figure(figsize=(8, 6))
plt.plot(prices, marker='o', linestyle='-', color='blue', label='Stock Prices')
plt.axhline(mean, color='red', linestyle='--', label='Mean')
plt.axhline(mean + std_dev, color='green', linestyle='--', label='Mean + Std Dev')
plt.axhline(mean - std_dev, color='green', linestyle='--', label='Mean - Std Dev')
plt.xlabel('Time')
plt.ylabel('Price')
plt.title('Stock Prices with Mean and Standard Deviation')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]]
#only("1")[
#voiceover("Let's consider an example. Suppose we have a series of stock prices over time. We can calculate the mean price and the standard deviation.")
]
#only("2-")[- Variance: Average of squared deviations from mean $s^2 = ((x_1 - bar(x))^2 + ... + (x_n - bar(x))^2) / (n - 1)$]
#v(20pt)
#only("3-")[- Standard Deviation: Square root of variance $s = sqrt(s^2)$]
#only("2")[
#voiceover("The variance is calculated as the average of the squared deviations of each price from the mean price.")
]
#only("3")[
#voiceover("The standard deviation is then the square root of the variance.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Interpreting Standard Deviation and Variance]
#v(40pt)
#only("1-")[- 68-95-99.7 rule 📏]
#v(20pt)
#only("2-")[- Approximately 68% of data within 1 standard deviation of mean]
#v(20pt)
#only("3-")[- Approximately 95% of data within 2 standard deviations of mean]
#v(20pt)
#only("4-")[- Approximately 99.7% of data within 3 standard deviations of mean]
#only("1")[
#voiceover("We can interpret the standard deviation using the 68-95-99.7 rule.")
]
#only("2")[
#voiceover("Approximately 68% of the data falls within 1 standard deviation of the mean.")
]
#only("3")[
#voiceover("Around 95% of the data falls within 2 standard deviations of the mean.")
]
#only("4")[
#voiceover("And nearly all, about 99.7%, fall within 3 standard deviations of the mean.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Risk Assessment 🎲]
#v(40pt)
#only("1-")[- Higher standard deviation ⇒ more volatility ⇒ higher risk 📈📉]
#v(20pt)
#only("2-")[- Lower standard deviation ⇒ more stability ⇒ lower risk 📈]
#only("1")[
#voiceover("In terms of risk assessment, a higher standard deviation implies more volatility in the stock prices, which is associated with higher risk.")
]
#only("2")[
#voiceover("Conversely, a lower standard deviation suggests more stability in the prices, indicating lower risk.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Standard deviation and variance measure dispersion 📊]
#v(20pt)
#only("2-")[- Higher values ⇒ more volatility ⇒ higher risk 📈📉]
#v(20pt)
#only("3-")[- Key tools for assessing risk in stock market investments 🔧]
#only("1")[
#voiceover("In summary, standard deviation and variance are measures of dispersion or variability.")
]
#only("2")[
#voiceover("Higher values of these measures indicate more volatility and thus higher risk in stock market investments.")
]
#only("3")[
#voiceover("They are key tools used by investors and analysts to assess the risk associated with different stocks or portfolios.")
]
]