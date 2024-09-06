clc; clear all; close all;
%To use the Kalman filter, we assume the object is be moving at constant velocity.
loc_detect=num2cell(randn(1,40)+(1:40)); %randn makes gaussian dist.

loc_detect{1}=[];

for fail = 15:20
    loc_detect{fail}=[];
end

figure
 hold on;
 
 ylim([0,length(loc_detect)]);
 xlim([0,length(loc_detect)]);
 xlabel('Time');
 ylabel('Location');
 
kalman=[];
 
 for index= 1:length(loc_detect)
     location=loc_detect{index};
     if isempty(kalman)
         if~isempty(location)
             stateModel=[1 1; 0 1];%predicts the state at a time step to the next time step.
             measurementModel=[1 0]; %is a linear matrix that determines measurements from the filter state.
             kalman=vision.KalmanFilter(stateModel,measurementModel,'ProcessNoise',1e-4,'MeasurementNoise',4); %filter preparation
             kalman.State=[location, 0];
         end
     else
         loc_predict= predict(kalman);
         if ~isempty(location)
             plot(index,location,'k+');
             loc_predict=correct(kalman,location);
         else
             title('Missing Detection'); %in prediction case
         end
         pause(0.1);
         plot(index,loc_predict,'ro');
         grid on;
     end
 end
 
 legend('Detected Locations','Predicted/Corrected Locations')
 