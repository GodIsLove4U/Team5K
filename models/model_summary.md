# Model Summmary

## Logistic Regression

The goal of the logistic regression is to determine based upon key attributes of donors to determine if the party is Republican or Democrat

### Pre-Processing

Data was gathered from the FEC master.  Once the data was identified, it was converted into a string and encoded using the le encoder. 

### Feature Engineering

Key features in this model come from the Donor file for the six swing states.  We selected the Committee City, State, Zip, the transaction amount, and donor's employer, and donor's occupation.

### Training / Testing Split

The typical split from training and testing was used.  Given that there were similar amounts of Republican and Democrat donors, there was no need to over or under sample.

### Model Choice

The logistic regression model was used because a donor is either Democratic or Republican, so the binary choice was appropriate.  We also compared the Logistic Regression with a Random Forest.

### Model Accuracy

The logistic regression model was fairly accurate with a score of 91.8%.  The Random forest had a predictive accuracy rate of 99.9%, which may indicate overfitting

### Model Success

This model will help candidates target donors by accurately predicting which party that they will donate.

## Unsupervised Clustering

The goal of the clustering model is to segment individual counties based upon a range of unemployment and health metrics.  A separate model was created for each metric 

### Pre-Processing

Data was gathered from the census and loaded into the Postgres Database.  From there it was extracted into a dataframe.  For null values, analysis shows that 0 was an appropriate value, so we filled in blank values with 0
Once in the model, it was scaled to avoid skewing results

### Feature Engineering

All metrics were placed into a PCA analysis.  The PCA analysis showed that only 3 features would really drive segmentation.  From there, an analysis of model inertia shows that we could select between 3 and 5 clusters

### Training / Testing Split

Not applicable for unsupervised learning

### Model Choice

The point of this model is to help campaigns create locally targetted messaging to speak to donors based upon population, unemployment, and health metrics

### Model Success

Placing this model in the dashboard provided an easy view to help campaigns identify trends and clusters by county