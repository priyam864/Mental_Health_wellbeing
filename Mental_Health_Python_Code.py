
import pandas as pd
from sklearn.preprocessing import MinMaxScaler

# Load data
data = pd.read_csv('mental_health_data.csv')

# Handle Missing Values
data.fillna({
    'Age': data['Age'].median(),
    'Gender': 'Unknown',
    'Mental_Health_Rating': data['Mental_Health_Rating'].mean()
}, inplace=True)

# Normalize Numerical Data
scaler = MinMaxScaler()
data[['Mental_Health_Rating']] = scaler.fit_transform(data[['Mental_Health_Rating']])

# Encode Categorical Data
data = pd.get_dummies(data, columns=['Gender', 'Field_of_Study'], drop_first=True)

# Save cleaned data
data.to_csv('cleaned_mental_health_data.csv', index=False)
