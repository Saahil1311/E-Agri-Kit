# E-Agri Kit: An Application for Smart Agriculture

## Introduction

Agriculture plays a crucial role in the global economy and is vital for food security. However, farmers face numerous challenges, including pest attacks, unforeseen weather conditions, and a lack of real-time data and technology-driven solutions. The E-Agri Kit project aims to address these challenges by providing farmers with an android application that leverages technology to improve agricultural productivity, sustainability, and profitability.

## Table of Contents

1. [Introduction](#introduction)
2. [Features](#features)
3. [Installation](#installation)
4. [Usage](#usage)
5. [System Components](#system-components)
    - [Farmers](#farmers)
    - [Investors](#investors)
    - [Buyers](#buyers)
    - [System](#system)
6. [Methodology and Algorithms](#methodology-and-algorithms)
    - [CNN with MobileNet](#cnn-with-mobilenet)
    - [CNN with Resnet50](#cnn-with-resnet50)
    - [Random Forest Regression](#random-forest-regression)
7. [Input and Output](#input-and-output)
8. [System Implementation and Results](#system-implementation-and-results)
9. [Contributing](#contributing)
10. [License](#license)
11. [Contact](#contact)

## Features

- **Automated Plant Disease Detection**: Detect plant diseases using image processing and deep learning models.
- **Real-Time Data and Analytics**: Provide real-time information on soil health, weather conditions, and crop management.
- **Investment Platform**: Connect farmers with investors for funding agricultural projects.
- **Marketplace**: Facilitate the sale of crops directly from farmers to buyers.
- **User-Friendly Interface**: Easy-to-use application for farmers, investors, and buyers.

## Installation

To install and run the E-Agri Kit application on your local machine, follow these steps:

1. **Clone the repository**:
    ```bash
    git clone https://github.com/yourusername/e-agri-kit.git
    cd e-agri-kit
    ```

2. **Install dependencies**:
    ```bash
    npm install
    ```

3. **Run the application**:
    ```bash
    npm start
    ```

4. **Open the application**:
    - Open your browser and navigate to `http://localhost:3000`.

## Usage

1. **Register as a Farmer, Investor, or Buyer**: Create an account and log in.
2. **Farmers**:
   - Upload data for funding, including crop details and investment requirements.
   - Enter details for selling crops.
   - Provide agreement forms to investors.
3. **Investors**:
   - View crop information and funding data.
   - Send investment requests to farmers.
   - View updates from farmers.
4. **Buyers**:
   - View selling details from farmers.
   - Contact farmers and make payments for crops.

## System Components

### Farmers

- **Registration**: Register with details such as crop name, farmer name, address, crop type, year of harvest, investment, profits, email, password, and mobile number.
- **Login**: After registration, log in and perform actions like uploading data for funding and selling crops.
- **Agreement**: Provide agreement forms to investors if they are agreeable to investment terms.

### Investors

- **Registration**: Register with personal details.
- **Login**: Log in to view funding data and send investment requests to farmers.
- **View Crop Information**: Access detailed information about crops and investments.
- **Invest**: Send requests and invest if the farmer accepts the terms.
- **Updates**: View updates from farmers.

### Buyers

- **Registration**: Register with personal details.
- **Login**: Log in to view selling details from farmers.
- **Purchase**: Contact farmers and make payments for crops.

### System

- **Create Dataset**: Collect and augment data for training.
- **Data Augmentation**: Increase dataset size by adding modified copies or synthetic data.
- **Data Pre-Processing**: Transform raw data into a useful format, handling missing and noisy data.
- **Prediction**: Use trained models to classify images and predict crop yields.

## Methodology and Algorithms

### CNN with MobileNet

- **Layers**: Input layer, Convolution Layer, Pooling Layer, Flatten Layer, and Dense Layer.
- **Model Training**: Train the model using pre-processed data and save using `fit_generator` method.
- **Softmax**: Convert numerical data to binary for classification.

### CNN with Resnet50

- **Layers**: Input layer, Convolution Layer, Pooling Layer, Flatten Layer, and Dense Layer.
- **Model Training**: Train the model using pre-processed data and save using `fit` method.
- **Softmax**: Convert numerical data to binary for classification.

### Random Forest Regression

- **Data Split**: Split data into training (70%) and testing (30%) sets.
- **Model Training**: Use `.fit()` method for training and `.predict()` for testing.
- **Performance Evaluation**: Calculate accuracy score, classification report, and confusion matrix.

## Input and Output

- **Input**: Communication between farmer, buyer, and investor.
- **Output**: Leaf image classification, crop yield prediction, fund requests, agreements, crop selling, and payment.

## System Implementation and Results

The implementation phase involves the development of the E-Agri Kit application, integration of data processing units, deployment in real-world agricultural settings, and rigorous testing. The goal is to create a technological solution that improves agricultural practices, crop yields, and promotes sustainable agriculture.

## Contributing

We welcome contributions from the community. If you'd like to contribute, please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -m 'Add your feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Create a Pull Request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For any questions or inquiries, please contact:

- **Name**: [Saahil Kareer]
- **Email**: [kareer2002saahil@gmail.com]
- **GitHub**: [Saahil1311](https://github.com/Saahil1311)

---

By using and contributing to this project, you agree to abide by the terms of the license. We appreciate your support and contributions to making agriculture more sustainable and technology-driven.
