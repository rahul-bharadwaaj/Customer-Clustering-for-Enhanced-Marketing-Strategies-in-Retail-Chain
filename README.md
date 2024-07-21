# Customer Clustering for Enhanced Marketing Strategies in Retail Chain

## Table of Contents
1. [Project Overview](#project-overview)
2. [Problem Statement](#problem-statement)
3. [Project Goal](#project-goal)
4. [Project Scope](#project-scope)
5. [Data Source](#data-source)
6. [Key Metrics](#key-metrics)
7. [Tools and Technologies](#tools-and-technologies)
8. [Data Ingestion](#data-ingestion)
9. [Data Analysis](#data-analysis)
10. [RFM Analysis](#rfm-analysis)
11. [Clustering and Analyzing Customer Segments](#clustering-and-analyzing-customer-segments)
12. [Data Visualization](#data-visualization)
13. [Conclusion and Insights](#conclusion-and-insights)
14. [How to Use](#how-to-use)
15. [Installation](#installation)
16. [Usage](#usage)
17. [Contributing](#contributing)
18. [License](#license)

## Project Overview
This project aims to optimize marketing strategies for a retail chain by performing customer segmentation using RFM (Recency, Frequency, Monetary) analysis and clustering algorithms. The goal is to develop targeted marketing strategies to enhance customer engagement and increase sales.

## Problem Statement
### Context
A successful chain of retail stores operates across various locations, identified by unique StoreIDs. The stores sell products through multiple sales channels, including in-store purchases, online sales, distributors, and wholesale transactions. To optimize marketing strategies, the retail chain collects detailed sales data from each store.

### Business Challenge
In the competitive retail industry, understanding customer behavior is crucial for tailoring marketing efforts and maximizing sales. The primary challenge is to segment customers based on their purchasing behavior to provide insights that will help tailor marketing strategies, improve customer engagement, and increase sales.

## Project Goal
The goal of this project is to perform a comprehensive RFM analysis to segment customers based on their purchasing behavior. By identifying distinct customer segments, the retail chain aims to develop targeted marketing strategies that cater to the specific needs and preferences of each segment, ultimately enhancing customer satisfaction and driving business growth.

## Project Scope
- **Data Source**: Retail chain's sales data including order dates, quantities, and monetary values.
- **Key Metrics**: Recency, Frequency, Monetary.
- **Deliverables**:
  - RFM Analysis Results
  - Clustering Model and Results
  - Tableau Visualizations
  - Comprehensive Documentation

## Data Source
The dataset used in this project is derived from the retail chain's sales data, which includes detailed information about customer transactions such as order dates, quantities, and monetary values.

## Key Metrics
- **Recency**: Days since the customer's last purchase.
- **Frequency**: Total number of purchases made by the customer.
- **Monetary**: Total amount of money spent by the customer.

## Tools and Technologies
- **Database**: AWS RDS MySQL, AWS S3
- **Programming Language**: Python
- **Machine Learning**: Scikit-learn
- **Visualization Tool**: Tableau
- **Additional Tools**: Pandas, SQLAlchemy

## Data Ingestion
1. **Upload Data to S3**: Created an S3 bucket named `customer-cluster` and uploaded the CSV file `sales_data.csv`.
2. **AWS RDS MySQL Setup**: Created an RDS Instance and connected it to MySQL Workbench.
3. **AWS Glue Configuration**: Configured AWS Glue to catalog the table in the RDS database.
4. **ETL Job Creation**: Created an ETL job in AWS Glue to extract data from the S3 bucket and load it into the RDS MySQL database.

## Data Analysis
### Sales Channel Analysis
- **Question**: Which sales channel has the highest sales volume?
- **Insights**: The In-Store channel has the highest sales volume, followed by the Online channel.

### Monthly Sales Analysis
- **Question**: What are the monthly sales trends?
- **Insights**: Sales show a seasonal pattern with peaks during certain months.

### Product Performance
- **Question**: Which products are the top sellers and what are the average discount rates?
- **Insights**: Product 23 is the top seller, followed by Products 37, 8, and 4.

### Customer Insights
- **Question**: Who are the top customers based on total spending and order frequency?
- **Insights**: Customer 12 is the top spender, followed by Customers 29 and 17.

### Store Sales Analysis
- **Question**: How do sales vary across different store locations?
- **Insights**: Store 284 has the highest sales volume, followed by Stores 26 and 166.

## RFM Analysis
### Question
How can we segment customers based on Recency, Frequency, and Monetary values?
### Insights
Customers have been segmented into groups based on their purchasing behavior. High-value customers show high frequency and monetary values.

## Clustering and Analyzing Customer Segments
1. **Standardizing RFM Values**: Transformed data to ensure equal contribution to the clustering process.
2. **Determining the Optimal Number of Clusters**: Used the Elbow method.
3. **Performing Clustering**: Applied KMeans clustering to segment customers.
4. **Mapping Clusters to Segments**: Analyzed characteristics of each cluster.
5. **Analyzing Cluster Characteristics**: Calculated key metrics for each cluster.

### Results
- **Cluster 0 - Potential Loyalists**: Moderate recency and frequency, significant monetary value.
- **Cluster 1 - Loyal**: High-frequency and high-monetary customers.
- **Cluster 2 - At Risk**: High recency, moderate frequency and monetary values.
- **Cluster 3 - Champions**: Highest frequency and monetary values.

## Data Visualization
### Dashboard Components and Insights
1. **Header and Filters**: Provides an overview and interactive filters for users.
2. **KPI Tiles**: Highlights key performance indicators for quick insights.
3. **Sales Performance Line Chart**: Shows total sales over time.
4. **Customer Analysis (RFM)**
   - **Scatter Plot**: Relationship between total spending and order frequency.
   - **Bar Chart**: Count of customers in each RFM segment.
5. **RFM Analysis Deep Dive**: Bubble chart tracking the evolution of RFM metrics.
6. **Product Performance**: Treemap showing total quantity sold and average discount per product.
7. **Sales Channel Performance**: Donut chart comparing the performance of different sales channels.
8. **Store Performance**: Stacked bubble chart showing the number of items sold by each store.

### Tableau Dashboard
![Customer Dashboard](link-to-image.png)
[View the Tableau Dashboard](https://public.tableau.com/views/Customer_Dashboard_17215683155920/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

## Conclusion and Insights
The customer segmentation analysis provides valuable insights to tailor marketing strategies to the specific needs and preferences of each segment. By focusing on personalized communication, exclusive deals, and engagement campaigns, the retail chain can enhance customer satisfaction, foster loyalty, and drive business growth.

## How to Use
This section provides instructions on how to use the project repository.

### Installation
1. Clone the repository:
    ```sh
    git clone https://github.com/your-username/customer-clustering.git
    ```
2. Navigate to the project directory:
    ```sh
    cd customer-clustering
    ```

### Usage
1. **Data Ingestion**:
    - Follow the steps outlined in the [Data Ingestion](#data-ingestion) section to set up the data in AWS S3 and RDS.
2. **Run the Analysis**:
    - Execute the Python scripts for data preprocessing, RFM analysis, and clustering.
3. **Visualize the Data**:
    - Open the Tableau workbook to visualize the insights and dashboards.

## Contributing
Contributions are welcome! Please read the [CONTRIBUTING.md](CONTRIBUTING.md) for details on the code of conduct and the process for submitting pull requests.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
