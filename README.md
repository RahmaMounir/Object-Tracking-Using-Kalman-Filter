# Object-Tracking-Using-Kalman-Filter

This project demonstrates object tracking using the Kalman filter, a widely adopted technique in computer vision for estimating and tracking the state of dynamic systems based on noisy measurements.

## Table of Contents

- [Introduction](#introduction)
- [Kalman Filter Theory](#kalman-filter-theory)
- [Methodology](#methodology)
  - [Initialization](#initialization)
  - [Prediction](#prediction)
  - [Measurement Update](#measurement-update)
  - [Correction](#correction)
  - [Repeat](#repeat)
- [MATLAB Codes & Results](#matlab-codes--results)
- [Applications](#applications)
- [Advantages and Disadvantages](#advantages-and-disadvantages)
- [Conclusion](#conclusion)
- [Team Members](#team-members)
- [Supervisors](#supervisors)
- [References](#references)

## Introduction

Object tracking is a fundamental task in computer vision that involves detecting objects and tracking their movements across frames or camera angles. The goal is to estimate bounding boxes and assign unique IDs to objects, making it possible to track and count unique objects in a video.

## Kalman Filter Theory

The Kalman filter is used for tracking and estimating the state of continuously changing systems, assuming that all variables are random and Gaussian distributed. The filter works by using a feedback control mechanism with two main updates:
- **Time Update**: Predicts the state of the object.
- **Measurement Update**: Corrects the prediction based on new measurements.

## Methodology

### Initialization
The starting point of the tracking process, providing an initial estimate of the object's location. The quality of initialization significantly impacts the overall tracking performance.

### Prediction
Estimates the object's current state based on its previous state and a state transition model. This step predicts where the object is likely to be in the next time step.

### Measurement Update
Refines the state estimate by comparing the predicted position with actual measurements, correcting discrepancies between the predicted and measured states.

### Correction
Combines the predicted state with the measurement update, applying the Kalman gain to adjust the state towards the measurements. The covariance matrix is updated to reflect the reduced uncertainty.

### Repeat
The Kalman filter iteratively repeats the Prediction, Measurement Update, and Correction steps for each time step, adapting to changes in the object's motion over time.

## MATLAB Codes & Results

The project includes MATLAB codes for simulating object tracking using the Kalman filter. Key components include:
- State transition and measurement matrices.
- Handling missing detections using arrays.
- Adjusting process noise and measurement noise to refine the filter's performance.

## Applications

- **Visual Surveillance**: People tracking, vehicle tracking, and abnormal behavior detection.
- **Autonomous Vehicles**: Object tracking for navigation, collision avoidance, and path planning.

## Advantages and Disadvantages

### Advantages
- **Efficiency**: Suitable for real-time applications with low complexity.
- **Flexibility**: Can handle various system and measurement models.
- **Recursive Updates**: Continuously incorporates new measurements.

### Disadvantages
- **Linearity Assumption**: May provide suboptimal results for nonlinear systems.
- **Computational Complexity**: Increases with state and measurement dimensions.
- **Dependency on Initial Conditions**: Performance depends heavily on initial estimates.

## Conclusion

Object tracking using the Kalman filter provides an efficient and effective solution for estimating the state of dynamic systems. By iteratively updating and refining the state estimate, the Kalman filter enables continuous and accurate tracking of objects in various scenarios.

## Team Members

- Rahma Mohamed (18106158)
- Veronya Amged (18104645)

## Supervisors

- Dr. Mohamed Atef ElKhoreby

## References

- [MATLAB Central](https://www.mathworks.com/matlabcentral/answers/365743-what-i-the-difference-between-rand-and-randn)
- [Kalman Filter Theory](https://www.bzarg.com/p/how-a-kalman-filter-works-in-pictures/)
- [Kalman Filter Applications](https://towardsdatascience.com/an-intro-to-kalman-filters-for-autonomous-vehicles-f43dd2e2004b)

---
