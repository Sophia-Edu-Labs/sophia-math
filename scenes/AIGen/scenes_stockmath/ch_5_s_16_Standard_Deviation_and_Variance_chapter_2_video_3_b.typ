#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Standard Deviation]
#v(40pt)
#only("1-")[Closing prices: $[150, 152, 149, 153, 148]$]
#v(20pt)
#only("2-")[Mean price: $bar(x) = (150+152+149+153+148)/5 = 150.4$]
#v(20pt)
#only("3-")[Deviations: $x_i - bar(x) = [-0.4, 1.6, -1.4, 2.6, -2.4]$]
#v(20pt)
#only("4-")[Squared deviations: $(x_i - bar(x))^2 = [0.16, 2.56, 1.96, 6.76, 5.76]$]
#only("1")[
#voiceover("That's not quite right, but no worries! Let's go through the correct solution step by step. We are given the closing prices of the stock over 5 days: 150, 152, 149, 153, and 148.")
]
#only("2")[  
#voiceover("First, we calculate the mean price. We add up all the prices and divide by the number of days. This gives us a mean price of 150.4.")
]
#only("3")[
#voiceover("Next, we calculate the deviations from the mean. We subtract the mean price from each daily price. This gives us the deviations: -0.4, 1.6, -1.4, 2.6, and -2.4.")  
]
#only("4")[
#voiceover("We then square each of these deviations. This gives us: 0.16, 2.56, 1.96, 6.76, and 5.76.")
]
]

#slide()[
#only("1-")[Sum of squared deviations: $sum((x_i - bar(x))^2) = 17.2$]
#v(20pt) 
#only("2-")[Variance: $s^2 = 17.2 / (5-1) = 4.3$]
#v(20pt)
#only("3-")[Standard deviation: $s = sqrt(4.3) = 2.074$]
#only("1")[
#voiceover("We sum up these squared deviations. This gives us a total of 17.2.")
]
#only("2")[  
#voiceover("To calculate the variance, we divide this sum by n-1, where n is the number of data points. In this case, n is 5. So we divide 17.2 by 4, which gives us a variance of 4.3.")
]
#only("3")[
#voiceover("Finally, to get the standard deviation, we take the square root of the variance. The square root of 4.3 is approximately 2.074. And that's our standard deviation!")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]  
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

prices = [150, 152, 149, 153, 148]
mean_price = np.mean(prices)

plt.figure(figsize=(8, 6))
plt.plot(range(1, 6), prices, marker='o', linestyle='-', color='blue', label='Closing Prices')
plt.axhline(mean_price, color='red', linestyle='--', label='Mean Price')

for i in range(5):
    plt.vlines(i+1, mean_price, prices[i], linestyles='dotted', colors='green', alpha=0.7)

plt.xlabel('Day')
plt.ylabel('Price')
plt.title('Daily Closing Prices')
plt.grid(True)
plt.legend()
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Let's visualize this. The blue line shows the daily closing prices, and the red dashed line represents the mean price. The green dotted lines show the deviations from the mean for each day.")  
]
]
]

#slide()[  
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)  
#only("1-")[1. Calculate mean 📊]
#v(20pt)
#only("2-")[2. Find deviations from mean 📏]
#v(20pt)
#only("3-")[3. Square deviations 🔢^2]
#v(20pt)  
#only("4-")[4. Sum squared deviations ➕]
#v(20pt)
#only("5-")[5. Divide sum by (n-1) for variance 〰]
#v(20pt)
#only("6-")[6. Take square root for standard deviation 🎯]
#only("1")[
#voiceover("In summary, to find the standard deviation:")  
]
#only("2")[
#voiceover("First, calculate the mean of the data.")
]
#only("3")[  
#voiceover("Then, find the deviations from the mean for each data point.")
] 
#only("4")[
#voiceover("Square these deviations.")
]
#only("5")[
#voiceover("Sum the squared deviations.")
]  
#only("6")[
#voiceover("Divide this sum by n-1, where n is the number of data points, to get the variance.")
]
#only("7")[  
#voiceover("Finally, take the square root of the variance to get the standard deviation.")
]
]