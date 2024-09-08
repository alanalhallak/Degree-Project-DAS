function echo_client_func_4(server_ip, server_port, data_length)
    % Create TCP object
    t = tcpclient(server_ip, server_port);
    start = 17;
    start_tx = 100;
    %data_length = 1024*;
    % Initialize an array to hold the received data
    %received_data = [];

    bytes_per_transfer = 32;
    
    % Initialize an array to hold the processed ADC values
    adc1_values = [];
    adc2_values = [];
    adc3_values = [];
    adc4_values = [];

    % Calculate the number of chunks
    num_chunks = ceil(data_length / bytes_per_transfer);
    % Initialize a counter for every 8 chunks
    chunk_counter = 0;
    
    % Send and receive data in chunks of 32 bytes
    for i = 1:num_chunks
        % Send the chunk
        write(t, uint8(bytes_per_transfer)); % This seems to be incorrect as it sends the number 32 as data. You might want to send actual data here.
        
        % Receive the echo of the chunk
        echo_chunk = double(read(t, bytes_per_transfer, "uint8"));

        % Process the received chunk for ADC 1
        if mod(chunk_counter, 4) == 0    
            for j = 1:2:length(echo_chunk)
                % Combine two bytes into one word (16-bit ADC value)
                adc1_value = typecast(uint8(echo_chunk(j:j+1)), 'uint16');
                adc1_values = [adc1_values, adc1_value];
            end
        end 
        
        if mod(chunk_counter, 4) == 1
            % Process the received chunk for ADC 2
            for k = 1:2:length(echo_chunk)
                % Combine two bytes into one word (16-bit ADC value)
                adc2_value = typecast(uint8(echo_chunk(k:k+1)), 'uint16');
                adc2_values = [adc2_values, adc2_value];
            end
        end 

        if mod(chunk_counter, 4) == 2
            % Process the received chunk for ADC 2
            for k = 1:2:length(echo_chunk)
                % Combine two bytes into one word (16-bit ADC value)
                adc3_value = typecast(uint8(echo_chunk(k:k+1)), 'uint16');
                adc3_values = [adc3_values, adc3_value];
            end
        end

        if mod(chunk_counter, 4) == 3
            % Process the received chunk for ADC 2
            for k = 1:2:length(echo_chunk)
                % Combine two bytes into one word (16-bit ADC value)
                adc4_value = typecast(uint8(echo_chunk(k:k+1)), 'uint16');
                adc4_values = [adc4_values, adc4_value];
            end
        end 


        % Increment the chunk counter
        chunk_counter = chunk_counter + 1;
    end
    
    % Display total received data length
    disp(['Total Received ', num2str(length(adc1_values(start:end))), ' ADC 1 values']);
    adc1_values_to_voltage = (double(adc1_values(start:end)) ./ 4096 ) .* 2.5;
    disp(['Total Received ', num2str(length(adc2_values(start:end))), ' ADC 2 values']);
    adc2_values_to_voltage = (double(adc2_values(start:end)) ./ 4096 ) .* 2.5;
    disp(['Total Received ', num2str(length(adc3_values(start:end))), ' ADC 3 values']);
    adc3_values_to_voltage = (double(adc3_values(start:end)) ./ 4096 ) .* 2.5;
    disp(['Total Received ', num2str(length(adc4_values(start:end))), ' ADC 4 values']);
    adc4_values_to_voltage = (double(adc4_values(start:end)) ./ 4096 ) .* 2.5;

    % Find the maximum and minimum voltage values
    max_voltage_adc1 = max(adc1_values_to_voltage(100:end));
    min_voltage_adc1 = min(adc1_values_to_voltage(100:end));
    max_voltage_adc2 = max(adc2_values_to_voltage(100:end));
    min_voltage_adc2 = min(adc2_values_to_voltage(100:end));
    max_voltage_adc3 = max(adc3_values_to_voltage(100:end));
    min_voltage_adc3 = min(adc3_values_to_voltage(100:end));
    max_voltage_adc4 = max(adc4_values_to_voltage(100:end));
    min_voltage_adc4 = min(adc4_values_to_voltage(100:end));

        % Find Peaks
    [~, locs1] = findpeaks(adc1_values_to_voltage(100:end));
    [~, locs2] = findpeaks(adc2_values_to_voltage(100:end));
    [~, locs3] = findpeaks(adc3_values_to_voltage(100:end));
    [~, locs4] = findpeaks(adc4_values_to_voltage(100:end));
     
    Fs = 1000000; % Sampling rate in Hz

    % Calculate Frequency (assuming at least two peaks are found)
    if length(locs1) > 1
        samplesBetweenPeaks1 = mean(diff(locs1)); % Average distance between peaks in samples
        frequency1 = Fs / samplesBetweenPeaks1; % Frequency of the signal
    else
        frequency1 = NaN; % Not enough peaks to calculate frequency
    end
    if length(locs2) > 1
        samplesBetweenPeaks2 = mean(diff(locs2)); % Average distance between peaks in samples
        frequency2 = Fs / samplesBetweenPeaks2; % Frequency of the signal
    else
        frequency2 = NaN; % Not enough peaks to calculate frequency
    end

    if length(locs3) > 1
        samplesBetweenPeaks3 = mean(diff(locs3)); % Average distance between peaks in samples
        frequency3 = Fs / samplesBetweenPeaks3; % Frequency of the signal
    else
        frequency3 = NaN; % Not enough peaks to calculate frequency
    end
    
    if length(locs4) > 1
        samplesBetweenPeaks4 = mean(diff(locs4)); % Average distance between peaks in samples
        frequency4 = Fs / samplesBetweenPeaks4; % Frequency of the signal
    else
        frequency4 = NaN; % Not enough peaks to calculate frequency
    end
    
    
    % Plot the converted voltage values
    figure;
    subplot(4,1,1);
    plot(adc1_values_to_voltage, 'DisplayName', 'ADC 1 to Voltage Conversion');
    %ylim([0 2.6]);
    hold on;
    
    % Update the title to include max, min voltage, and frequency
    titleText = sprintf('ADC 1 Values - Max: %.2f V, Min: %.2f V, Frequency 1: %.2f Hz', max_voltage_adc1, min_voltage_adc1, frequency1);
    title(titleText);
    xlabel('Sample Index');
    ylabel('Voltage (V)');
    hold off;
    
    subplot(4,1,2);
    plot(adc2_values_to_voltage, 'DisplayName', 'ADC 2 to Voltage Conversion');
    %ylim([0 2.6]);
    hold on;
    
    % Update the title to include max, min voltage, and frequency
    titleText = sprintf('ADC 2 Values - Max: %.2f V, Min: %.2f V, Frequency 2: %.2f Hz', max_voltage_adc2, min_voltage_adc2, frequency2);
    title(titleText);
    xlabel('Sample Index');
    ylabel('Voltage (V)');
    hold off;

    subplot(4,1,3);
    plot(adc3_values_to_voltage, 'DisplayName', 'ADC 3 to Voltage Conversion');
    %ylim([0 2.6]);
    hold on;
    
    % Update the title to include max, min voltage, and frequency
    titleText = sprintf('ADC 3 Values - Max: %.2f V, Min: %.2f V, Frequency 3: %.2f Hz', max_voltage_adc3, min_voltage_adc3, frequency3);
    title(titleText);
    xlabel('Sample Index');
    ylabel('Voltage (V)');
    hold off;

    subplot(4,1,4);
    plot(adc4_values_to_voltage, 'DisplayName', 'ADC 4 to Voltage Conversion');
    %ylim([0 2.6]);
    hold on;
    
    % Update the title to include max, min voltage, and frequency
    titleText = sprintf('ADC 4 Values - Max: %.2f V, Min: %.2f V, Frequency 4: %.2f Hz', max_voltage_adc4, min_voltage_adc4, frequency4);
    title(titleText);
    xlabel('Sample Index');
    ylabel('Voltage (V)');
    hold off;
    % Clean up
    clear t;

    % save adc1.mat adc1_values_to_voltage
    % save adc2.mat adc2_values_to_voltage
    % save adc3.mat adc3_values_to_voltage
    % save adc4.mat adc4_values_to_voltage

    data0814 = [adc1_values_to_voltage' adc2_values_to_voltage' adc3_values_to_voltage' adc4_values_to_voltage'];
    save data0814_1.mat data0814
end
