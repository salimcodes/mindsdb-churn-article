CREATE MODEL mindsdb.customer_churn_predictor
FROM files
  (SELECT * FROM churn)
PREDICT Churn;

SELECT status
FROM mindsdb.models
WHERE name='customer_churn_predictor';

SELECT Churn, Churn_confidence, Churn_explain
FROM mindsdb.customer_churn_predictor
WHERE SeniorCitizen=0
AND gender='Female'
AND tenure=2
AND PhoneService='Yes'
AND MultipleLines='No phone service'
AND InternetService='DSL'
AND OnlineSecurity='Yes'
AND OnlineBackup= 'Yes'
AND DeviceProtection='No'
AND TechSupport= 'Yes'
AND StreamingTV= 'Yes'
AND StreamingMovies= 'No'
AND PaperlessBilling= 'Yes'
AND PaymentMethod = 'Electronic check';
