function CrackVisual(signal_1,signal_2)
% CrackVisual recieves two vectors containing the size of a crack,
% and makes a video visualizing Cracks 



% Define which frames will be shown in the video
frames = round(linspace(1,length(signal_1)));
n = 1;

figh = figure;
for k = frames
    % Clear the figure to start with a blank slate
    clf
    
    
    % Extract data at the current time step
    crack_1 = signal_1(k);
    crack_2 = signal_2(k);
    
    % Create Plot of the first crack at the current time 
    subplot(2,1,1)
    plot([0 crack_1],[0 0])
    
    xlim([0 570])
    title('Crack number 1')
    xlabel('Size of the Crack             N = ' + string(k))
    grid on
    set(gca,'ytick',[])
    
    % Create Plot of the second crack at the current time 
    subplot(2,1,2)
    plot([0 crack_2],[0 0])
    title('Crack number 2')
    
    xlim([0 570])
    xlabel('Size of the Crack             N = ' + string(k))
    grid on
    set(gca,'ytick',[])
    
 
    %% Take a Snapshot of the current plot
    % Save the frame
    movieVector(n) = getframe(figh);
    n = n+1;

end

%% Save Movie

% Create a VideoWriter object and set properties
myWriter = VideoWriter('Crack_video'); 

% Determine frame rate
myWriter.FrameRate = 10;

% Open the VideoWriter object, write the movie, and close the file
open(myWriter);
writeVideo(myWriter, movieVector);
close(myWriter);


end

