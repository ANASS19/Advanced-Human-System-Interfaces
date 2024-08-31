% Define the parameters
fs = 100;                   % Sampling frequency (Hz)
t = 0:1/fs:10-1/fs;         % Time vector (10 seconds)
f = 1;                      % Frequency of the sine wave (Hz)
signal = sin(2*pi*f*t);     % Original signal

% Add noise to the signal
noisy_signal = signal + 0.5*randn(size(t));

% Plot the original and noisy signals
figure;
plot(t, signal, 'b', 'DisplayName', 'Original Signal');
hold on;
plot(t, noisy_signal, 'r', 'DisplayName', 'Noisy Signal');
legend;
title('Original and Noisy Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Define the window size
window_size = 5;

% Create the filter coefficients
b = (1/window_size)*ones(1, window_size);

% Apply the Moving Average filter
filtered_signal = filter(b, 1, noisy_signal);

% Plot the filtered signal
figure;
plot(t, noisy_signal, 'r', 'DisplayName', 'Noisy Signal');
hold on;
plot(t, filtered_signal, 'g', 'DisplayName', 'Filtered Signal');
legend;
title('Noisy and Filtered Signal');
xlabel('Time (s)');
ylabel('Amplitude');