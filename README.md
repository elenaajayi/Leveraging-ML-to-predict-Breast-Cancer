# Enhancing Breast Cancer Diagnosis and Treatment with Machine Learning


This repository contains my work on applying machine learning algorithms to improve breast cancer diagnosis and treatment. I used several powerful algorithms, including K-means clustering, random forests, and decision trees, to identify key patterns in breast cancer data.

Dataset Overview
**Wisconsin Diagnostic Breast Cancer (WDBC) Dataset (Al Aswad, 2023)**: The dataset includes 569 samples of breast tissue with 32 features describing cell characteristics and biopsy images. Each sample is classified as either benign (non-cancerous) or malignant (cancerous).

Approach and Key Steps
Data Preprocessing:
I handled missing and uncertain values to clean the dataset.
I also used feature engineering techniques, such as min-max normalization and creating feature ratios, to prepare the data for analysis.

Clustering:
K-means clustering helped me identify three distinct groups of breast cancer based on clinical and texture features, offering new insights into tumor characteristics.

Classification:
I trained a random forest model on the engineered data, achieving an accuracy of **93.4%** in predicting whether a tumor is benign or malignant.

Model Interpretability:
I used decision trees within the random forest to reveal which features were most important for classifying tumor types, adding clarity to the decision-making process.

Conclusion
This study, now published in the **Scholarium Interdisciplinary Journal**, Highlights the effectiveness of combining multiple machine learning techniques to create a robust tool for diagnosing breast cancer. By integrating cluster, classification, and interpretable models, I provide a deeper understanding of the disease, which can lead to more accurate diagnoses and personalized treatment strategies.

Looking Forward
Further exploration of additional datasets and techniques could continue improving the diagnosis and treatment of breast cancer.
