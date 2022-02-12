# Classification-of-loading-conditions-based-on-Acoustic-Emissions

**Project Description:**

In this project, using an Acoustic Emission (AE) signal from a Pin-on-disc tribometer, which is a widely used tribological apparatus and Machine learning framework to classify the various loading conditions (load and RPM).
The study was performed on twelve AE signal data containing two experimental datasets with 6 loading conditions each 
- 2 RPMs : 300 min-1,450 min-1 &
- 3 loading conditions : 0N, 40N, 80N

**Feature Engineering:**

Feature engineering is a crucial step to identify the characteristics of the signal that would aid distinguish the various loading conditions with optimum computational time. The following 5 major features from the above-mentioned domains were selected. They are, Mean, RMS (Root mean square), Autocorrelation, Periodogram and Power spectral density estimate by Welch’s method.

The time-domain analysis provides statistical features which are a function of the amplitude variation over time. Mean and RMS are the features focused on in this study. Physically, RMS is considered as the mean power of a stochastic signal. Also, it is an estimation of the signals’ deviation from each other. 

Autocorrelation estimates the degree of self-similarity of the signal as a function of the time step of the function. The local oscillations of the autocorrelation functions are attributed to the modal composition (impulse, chirp, broadband etc., usually the properties of systems in frequency domain) of arrival of an AE signal at the sensor location. The corresponding 3 features were derived from Autocorrelation. 

Spectral density estimate is done in two ways—Periodogram (Fourier transformation of the autocorrelation over a continuous function x(t)), Welch’s method (Estimation that involves the time-averaging). 

Computational complexity increases with the feature vectors of higher dimension. To solve this problem, local maxima, and the PSD (Power spectral density) were used to keep the dimensions of the vectors to minimum. Using the aforementioned features, the dimension of periodogram and welch feature vector were decreased to 17 together. However, among these 22 features only the 7 features acquired from the ANOVA were considered for ML modelling.

**Machine Learning:**

**1. Supervised Learning:**

Supervised learning was carried out as the given data was labelled. Decision tree models were implemented for categorical classification based on the above 7 attributes. Decision trees are popular for accurate predictions, easy to interpret and could be used even without any parameter setting. Initially a Coarse tree with 4 splits and minimum leaf size 36 was executed for which cross validation and test accuracy turned out to be 83.3%. Though this model effectively recognized the given inputs for all the 6 loading conditions, the visualization was relatively significant in 300 rpm conditions. 

Later, with Nearest neighbour classifiers were performed as they are more suited for good predictive accuracy in low dimensions. Among the k-nearest neighbour (KNN) classifiers, Coarse KNN with 100 nearest neighbours produced validation and testing accuracies of 93.8% and 99.6% respectively. The results were relatively distinguishable for all the loading conditions except certain aberrations were identified for the values of 40 N and 80 N under 450 rpm. Later, Medium KNN with 10 nearest neighbours achieved an accuracy of 100%.

In addition, few other classification models have also been used such as Fine Tree, Linear Discriminant, Gaussian Naïve Bayes, Linear SVM, Fine KNN also classified the given problem with almost 100% accuracy. These high rates of accuracy could be attributed to the features selected being appropriate for the given data

**2. Deep Learning:**

A Feed Forward Neural Net (FFNN) using Scaled Conjugate Gradient with 1 hidden layer and 6 neurons with attained Mean squared error (mse) loss function value of 7.8e10 with the Bayesian Regularization training function in 30 epochs and resulted in 100% accuracy on the test set. It was also observed that training, validation and testing curves trace each other with a minimal deviation of training curve of the order 10-20. Also, from confusion matrix it was observed that all the classes were rightly identified by the Neural network.

**References:**

- A. Terchi und Y. H. J. Au, „Acoustic emission signal processing,“ Measurement and Control, Sage journals, Bd. 34, Nr. 8, pp. 240-244 , 2001.
- P. Krishnakumar, K. Rameshkumar und K. I. Ramchandran, „Feature level fusion of vibration and acoustic emission signals in tool conditon monitoring using machine learning classifiers,“ International Journal of Prognostics and Health Management , Bd. 9, 2020.
- P. Deshpande, B. Meylan und K. Wasmer, „Acoustic emission and machine learning based classificaiton of wear generated using a pin-on-disc tribometer equipped with a digital holographic microscope,“ Wear , Bd. 476, Nr. ISSN 0043-1648, 2021.
- K. A. G Penaranda, „Pattern Recognition, Classification and Diagnosis of Acoustic Emission signals in Application for mining,“ Aachener Schriften zur Rohstoff- und Entsorgungstechnik, Aachen, 2016.
- S. Bekher und T. Sych, „Development of methodology for the calculation and experimental investigation of acoustic emission signals,“ in AIP conference proceedings, 2017.
- M. Naderi und H. Mahdavi-Nasab, „Analysis and classification of EEG signals using spectral analysis and recurrent neural networks,“ 17th Iranian Conference of Biomedical Engineering (ICBME), pp. 1-4, 2010.


