from sklearn.linear_model import LinearRegression
import numpy as np

# Dummy data
X = np.array([[1], [2], [3], [4]])
y = np.array([2, 4, 6, 8])

# Model creation
model = LinearRegression()
model.fit(X, y)

print("Prediction for 5:", model.predict([[5]]))
