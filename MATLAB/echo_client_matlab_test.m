close all;
% Server details
SERVER_IP = '192.168.1.10';
SERVER_PORT = 7;
DATA_LENGTH = 1024*8;

% Counter for the number of iterations
counter = 0;

% Maximum number of iterations
max_iterations = 1;

while counter < max_iterations
    % Echo the data
    echo_client_func_2(SERVER_IP, SERVER_PORT, DATA_LENGTH);
    
    % Increment the counter
    counter = counter + 1;
    
    % Optional: Pause between iterations to reduce load on the server
    % pause(1); % Pause for 1 second
end

% Optional: Display a message once the loop is completed
disp(['Completed ' num2str(max_iterations) ' requests.']);
