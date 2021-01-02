function CrackVisual(signal_1,signal_2)
% CrackVisual recieves two vectors containing the size of a crack,
% and makes a video visualizing Cracks 


%% Step 2: Draw/Render Scenario
figh = figure;

frames = linspace(1,length(signal_1));

for k=frames
    %Clear the figure to start with a blank slate
    clf
    
    %Extract data at the current time step
    crack_1 = signal_1(k);
    crack_2 = signal_2(k);
    
    %Where is the current point?
    plot3(x_k, y_k, z_k, 'go', 'LineWidth', 3, 'MarkerSize', 15)
    
    %Plot the entire curve
    hold on
    plot3(x, y, z, 'b-', 'LineWidth', 2);
    
    %Add plotting options
    grid on
    xlabel('x')
    ylabel('y')
    zlabel('z')
    title(['t = ',num2str(t_k)])
    view([30 35])
%     view([30+20*t_k 35])      %show how viewpoint can be manipulated
    
    %% Step 3: Take a Snapshot
    %Save the frame
    movieVector(k) = getframe;
%     movieVector(k) = getframe(figh, [10 10 520 400]);   %manually specify getframe region
    
    %% Step 4: Advance Time
    %Happens automatically if using a for loop
end

%% Step 5: Save Movie
%Create a VideoWriter object and set properties
myWriter = VideoWriter('curve');            %create an .avi file
% myWriter = VideoWriter('curve','MPEG-4');   %create an .mp4 file
myWriter.FrameRate = 20;

%Open the VideoWriter object, write the movie, and close the file
open(myWriter);
writeVideo(myWriter, movieVector);
close(myWriter);

disp('DONE!')











end

