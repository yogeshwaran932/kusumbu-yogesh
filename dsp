





CYCLE I



EX. NO: 1 DATE :
COMPUTATION OF LINEAR AND CIRCULAR CONVOLUTION



AIM:
To write a MATLAB Script to perform discrete convolution (Linear and Circular) for
the given two sequences.
COMPONENTS REQUIRED:
PC, MATLAB software
ALGORITHM/PROCEDURE:

LINEAR CONVOLUTION:
Enter the sequences (Input x[n] and the Impulse response h[n])
Perform the linear convolution between x[k] and h[k] and obtain y[n].
Plot the Results
CIRCULAR CONVOLUTION
Enter the sequences input x[n] and the impulse response h[n])
Make the length of the sequences equal by padding zeros to the smaller length sequence.
Perform the circular convolution between x[k] and h[k]and obtain y[n].
Plot the Results

SOURCE CODE 1 – LINEAR CONVOLUTION
clc; clear all; close all;
%Program to perform Linear Convolution

x1=input('Enter the first sequence to be convoluted:'); subplot(3,1,1);
stem(x1); xlabel('Time'); ylabel('Amplitude'); title('First sequence');

x2=input('Enter the second sequence to be convoluted:'); subplot(3,1,2);
stem(x2); xlabel('Time'); ylabel('Amplitude'); title('Second sequence');

f=conv(x1,x2);
disp('The Linear convoluted sequence is'); disp(f);
subplot(3,1,3); stem(f); xlabel('Time'); ylabel('Amplitude');
title('Linear Convoluted sequence');

SOURCE CODE 2 – CIRCULAR CONVOLUTION
clc; clear all; close all;
%Program to perform Circular Convolution

x1=input('Enter the first sequence to be convoluted:'); subplot(3,1,1);
l1=length(x1); stem(x1); xlabel('Time'); ylabel('Amplitude'); title('First sequence');

x2=input('Enter the second sequence to be convoluted:'); subplot(3,1,2);
l2=length(x2); stem(x2); xlabel('Time'); ylabel('Amplitude'); title('Second sequence');

if l1>l2
l3=l1-l2; x2=[x2,zeros(1,l3)];
elseif l2>l1 l3=l2-l1;
x1=[x1,zeros(1,l3)]; end

f=cconv(x1,x2);

disp('The Circular convoluted sequence is'); disp(f);
subplot(3,1,3); stem(f); xlabel('Time'); ylabel('Amplitude');
title('Circular Convoluted sequence');

OUTPUT WAVEFORMS:


LINEAR CONVOLUTION

Input: Enter the first sequence to be convoluted:[1,2,3,4] Enter the second sequence to be convoluted:[2,3,4]
Output
The Linear convoluted sequence is
2	7	16	25	24	16

Output Waveforms



CIRCULAR CONVOLUTION
Input: Enter the first sequence to be convoluted:[1,2,3,4] Enter the second sequence to be convoluted:[2,3,4]
Output
The Circular convoluted sequence is Columns 1 through 5

2.0000	7.0000	16.0000	25.0000	24.0000

Columns 6 through 7
16.0000	0.0000



Output Waveforms


























































RESULT:
The linear and circular convolutions are performed by using MATLAB script and the program results are verified by manual calculation.






EX. NO: 2  				CALCULATIONS OF DFT AND FFT
DATE :


AIM:
To write a MATLAB program to perform the Discrete Fourier Transform and Fast
Fourier Transform for the given sequences.
COMPONENTS REQUIRED:
PC, MATLAB software


ALGORITHM
Click on the MATLAB icon on the desktop (or go to Start - All Programs and click on MATLAB) to get into the Command Window
Type ‘edit’ in the MATLAB prompt ‘>>’ that appears in the Command window.
Write the program in the ‘Edit’ window and save it as ‘m-file’
Run the program
Enter the input in the command window
The result is displayed in the Command window and the graphical output is displayed in the Figure Window
PROCEDURE:
Define the Input Sequence
Calculate DFT Manually (Using Formula)
Calculate FFT Using Built-in Function
Display and Compare Results
Plot the Results















Source Code :2 (a) CALCULATIONS OF DFT


% Define the input sequence
x = [1, 2, 3, 4]; % Example sequence

% Get the length of the sequence
N = length(x);

% Initialize the DFT result
X = zeros(1, N);

% Calculate DFT using the formula
for k = 0:N-1
    for n = 0:N-1
        X(k+1) = X(k+1) + x(n+1) * exp(-1i * 2 * pi * k * n / N);
    end
end

% Display the result
disp('DFT of the sequence:');
disp(X);

% Optional: plot the magnitude and phase of the DFT
subplot(2,1,1);
stem(0:N-1, abs(X));
title('Magnitude of DFT');
xlabel('k');
ylabel('Magnitude');disp('magnitude response');
disp(abs(X));
phase_radians = angle(X);
phase_degrees = rad2deg(phase_radians);
subplot(2,1,2);
stem(0:N-1, phase_degrees);
title('Phase of DFT');
xlabel('k');
ylabel('Phase (radians)');disp('phase response');
disp(phase_degrees);













OUTPUT:
	
	DFT of the sequence:
  	10.0000 + 0.0000i  -2.0000 + 2.0000i  -2.0000 - 0.0000i  -2.0000 - 2.0000i

magnitude response
   	10.0000    2.8284    2.0000    2.8284

phase response
         	0 135.0000 -180.0000 -135.0000





	OUTPUT WAVEFORM:

















Source Code :2 (B) CALCULATIONS OF FFT


x = [1, 1, 1, 0]; % Example sequence

% Compute the FFT using MATLAB's built-in fft function
X_fft = fft(x);
N=length(x);

% Display the result
disp('FFT of the sequence:');
disp(X_fft);

% Optional: plot the magnitude and phase of the FFT
figure;
subplot(2,1,1);
stem((0:N-1), abs(X_fft), 'b');
title('Magnitude of FFT');
xlabel('k');
ylabel('Magnitude');
disp('magnitude response');
disp(abs(X_fft));

phase_radians = angle(X_fft);
phase_degrees = rad2deg(phase_radians);

subplot(2,1,2);
stem((0:N-1), phase_degrees, 'r');
title('Phase of FFT');
xlabel('k');
ylabel('Phase (radians)');
disp('phase response');
disp(phase_degrees);

















OUTPUT:


FFT of the sequence:
   3.0000 + 0.0000i   0.0000 - 1.0000i   1.0000 + 0.0000i   0.0000 + 1.0000i

magnitude response
     3     1     1     1

phase response
     0   -90     0    90





OUTPUT WAVEFORM







































RESULT:
The program for DFT/FFT calculation was performed. The results were verified by manual calculation.


EX. NO: 3 DATE :
DESIGN OF FIR FILTER USING WINDOWING TECHNIQUE




AIM:
To write a MATLAB Script to design a  FIR filter  using Window (Rectangular, Hanning, Hamming) 
Method for the given specifications
COMPONENTS REQUIRED:
PC, MATLAB software

ALGORITHM/
Click on the MATLAB icon on the desktop (or go to Start – All Programs and click on MATLAB) to get into the Command Window.
Type ‘edit’ in the MATLAB prompt ‘>>’ that appears in the Command window.
Write the program in the ‘Edit’ window and save it in ‘M-file’.
Run the program.
Enter the input in the Command Window.
The result is displayed in the Command window and the graphical output is displayed in the Figure Window.

PROCEDURE:
Define Specifications
Use fir1() with 'low' option and rectwin(N) as the window.
Plot the frequency response using freqz().
Use 'high' option with the normalized high cutoff frequency.
Use 'bandpass' option and normalized lower and upper cutoff frequencies.
Use 'stop' option for rejecting a specific frequency band.

SOURCE CODE :3(A) FIR FILTER DESIGN USING RECTANGULAR WINDOW

%Parameters
Fs = 1000; % Sampling frequency (Hz)
N = 51;    % Filter order (Number of coefficients)
Fc_low = 100;  % Cutoff frequency for low-pass filter (Hz)
Fc_high = 300; % Cutoff frequency for high-pass filter (Hz)
Fc1_band = 200; % Lower cutoff frequency for band-pass filter (Hz)
Fc2_band = 400; % Upper cutoff frequency for band-pass filter (Hz)
Fc1_stop = 200; % Lower cutoff frequency for band-stop filter (Hz)
Fc2_stop = 400; % Upper cutoff frequency for band-stop filter (Hz)

% Low-pass filter
h_low = fir1(N-1, Fc_low/(Fs/2), 'low', rectwin(N));
freqz(h_low, 1, 1024, Fs);
title('Low-pass FIR Filter');

% High-pass filter
h_high = fir1(N-1, Fc_high/(Fs/2), 'high', rectwin(N));
figure;
freqz(h_high, 1, 1024, Fs);
title('High-pass FIR Filter');

% Band-pass filter
h_band = fir1(N-1, [Fc1_band/(Fs/2), Fc2_band/(Fs/2)], 'bandpass', rectwin(N));
figure;
freqz(h_band, 1, 1024, Fs);
title('Band-pass FIR Filter');

% Band-stop filter
h_stop = fir1(N-1, [Fc1_stop/(Fs/2), Fc2_stop/(Fs/2)], 'stop', rectwin(N));
figure;
freqz(h_stop, 1, 1024, Fs);
title('Band-stop FIR Filter');






OUTPUT WAVEFORMS:













SOURCE CODE :3(B)– FIR DESIGN USING HANNING WINDOW


% Parameters
Fs = 1000; % Sampling frequency (Hz)
N = 51;    % Filter order (Number of coefficients)
Fc_low = 100;  % Cutoff frequency for low-pass filter (Hz)
Fc_high = 300; % Cutoff frequency for high-pass filter (Hz)
Fc1_band = 200; % Lower cutoff frequency for band-pass filter (Hz)
Fc2_band = 400; % Upper cutoff frequency for band-pass filter (Hz)
Fc1_stop = 200; % Lower cutoff frequency for band-stop filter (Hz)
Fc2_stop = 400; % Upper cutoff frequency for band-stop filter (Hz)

% Low-pass filter
h_low = fir1(N-1, Fc_low/(Fs/2), 'low', hann(N));
freqz(h_low, 1, 1024, Fs);
title('Low-pass FIR Filter');

% High-pass filter
h_high = fir1(N-1, Fc_high/(Fs/2), 'high', hann(N));
figure;
freqz(h_high, 1, 1024, Fs);
title('High-pass FIR Filter');

% Band-pass filter
h_band = fir1(N-1, [Fc1_band/(Fs/2), Fc2_band/(Fs/2)], 'bandpass', hann(N));
figure;
freqz(h_band, 1, 1024, Fs);
title('Band-pass FIR Filter');

% Band-stop filter
h_stop = fir1(N-1, [Fc1_stop/(Fs/2), Fc2_stop/(Fs/2)], 'stop', hann(N));
figure;
freqz(h_stop, 1, 1024, Fs);
title('Band-stop FIR Filter');






























SOURCE CODE :3 (C)– FIR DESIGN USING HAMMING WINDOW

% Parameters
Fs = 1000; % Sampling frequency (Hz)
N = 51;    % Filter order (Number of coefficients)
Fc_low = 100;  % Cutoff frequency for low-pass filter (Hz)
Fc_high = 300; % Cutoff frequency for high-pass filter (Hz)
Fc1_band = 200; % Lower cutoff frequency for band-pass filter (Hz)
Fc2_band = 400; % Upper cutoff frequency for band-pass filter (Hz)
Fc1_stop = 200; % Lower cutoff frequency for band-stop filter (Hz)
Fc2_stop = 400; % Upper cutoff frequency for band-stop filter (Hz)

% Low-pass filter
h_low = fir1(N-1, Fc_low/(Fs/2), 'low', hamming(N));
freqz(h_low, 1, 1024, Fs);
title('Low-pass FIR Filter');

% High-pass filter
h_high = fir1(N-1, Fc_high/(Fs/2), 'high', hamming(N));
figure;
freqz(h_high, 1, 1024, Fs);
title('High-pass FIR Filter');

% Band-pass filter
h_band = fir1(N-1, [Fc1_band/(Fs/2), Fc2_band/(Fs/2)], 'bandpass', hamming(N));
figure;
freqz(h_band, 1, 1024, Fs);
title('Band-pass FIR Filter');

% Band-stop filter
h_stop = fir1(N-1, [Fc1_stop/(Fs/2), Fc2_stop/(Fs/2)], 'stop', hamming(N));
figure;
freqz(h_stop, 1, 1024, Fs);
title('Band-stop FIR Filter');











OUTPUT WAVEFORMS:






























RESULT:
Thus, the FIR filters( LPF,HPF,BPF,BSF) was designed using Rectangular , Hanning, Hamming Window method  and the magnitude , phase responses drawn.


EX. NO:4 DATE:
DESIGN OF IIR FILTERS




AIM:
To write a MATLAB Script to design Butterworth and Chebyshev low pass , High pass filters
using  Bilinear Transformation, Impulse Invariant Transformation
COMPONENTS REQUIRED:
PC, MATLAB software
BILINEAR TRANSFORMATION:
DESIGN STEPS:
From the given specifications, Find pre-warped analog frequencies 
Using the analog frequencies, find H(s) of the analog filter
Compute H(Z) of digital filter.





IMPULSE INVARIANT TRANSFORMATION: DESIGN STEPS:

Find the analog frequency .

Find the transfer function of analog filter Ha(s)
Express the analog filter transfer function as a sum of single pole filters
Compute H(Z) of digital filter 

1


ALGORITHM/PROCEDURE:


Calculate the attenuation in dB for the given design parameters
Design the analog counterpart
Using Impulse Invariant /Bilinear transformation design the digital filter
Display the transfer function. Plot the magnitude response and phase response

SOURCE CODE:4(A) IIR LOWPASS & HIGHPASS BUTTERWORTH FILTER DESIGN BY IMPULSE INVARIENT
%LPF
% Specifications
order = 10; % Filter order
cutoff_freq = 0.5; % Cutoff frequency (normalized)

% Analog Butterworth filter design
[b, a] = butter(order, cutoff_freq, 's'); % 's' specifies an analog filter

% Impulse invariance method (using c2d function)
sampling_frequency = 1; % Set sampling frequency for discrete system
[bd, ad] = impinvar(b, a, sampling_frequency);

% Frequency response
[H, w] = freqz(bd, ad, 1024);

% Plot frequency response
                                                      
figure;
plot(w/pi, 20*log10(abs(H)));
title('Butterworth Low-Pass Filter Frequency Response');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude (dB)');
grid on;

% HPF
% Specifications
order = 4; % Filter order
cutoff_freq = 0.2; % Cutoff frequency (normalized)

% Analog Butterworth filter design
[b, a] = butter(order, cutoff_freq, 'high', 's'); % 'high' specifies high-pass filter, 's' specifies analog filter

% Impulse invariance method (using c2d function)
sampling_frequency = 1; % Set sampling frequency for discrete system
[bd, ad] = impinvar(b, a, sampling_frequency);

% Frequency response
[H, w] = freqz(bd, ad, 1024);




% Plot frequency response
figure;
plot(w/pi, 20*log10(abs(H)));
title('Butterworth High-Pass Filter Frequency Response');
xlabel('Normalized Frequency (\times\pi rad/sample)');

OUTPUT WAVEFORMS:







SOURCE CODE:4(B) IIR BUTTERWORTH LOW-PASS & HIGH PASS FILTER DESIGN USING 	BILINEAR TRANSFORMATION

% LPF
% Specifications
order = 4;        % Filter order
Fs = 1000;        % Sampling frequency in Hz
Fc = 100;         % Desired cutoff frequency in Hz

% Pre-warp the analog cutoff frequency
Wc = 2 * Fs * tan(pi * Fc / Fs); % Pre-warped analog frequency (rad/s)

% Analog Butterworth low-pass prototype
[ba, aa] = butter(order, Wc, 's'); % Analog low-pass filter

% Bilinear transformation to get digital filter
[bd, ad] = bilinear(ba, aa, Fs);

% Frequency response
[H, f] = freqz(bd, ad, 1024, Fs); % f in Hz

% Plot frequency response
figure;
plot(f, 20*log10(abs(H)));
title('Butterworth Low-Pass Filter Frequency Response (Bilinear Transform)');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
grid on;














% HPF
% Specifications
order = 4;        % Filter order
Fs = 1000;        % Sampling frequency in Hz
Fc = 100;         % Desired cutoff frequency in Hz

% Pre-warp the analog cutoff frequency
Wc = 2 * Fs * tan(pi * Fc / Fs); % Pre-warped analog frequency (rad/s)

% Design analog Butterworth high-pass filter
[ba, aa] = butter(order, Wc, 'high', 's'); % Analog high-pass filter

% Bilinear transformation to convert to digital filter
[bd, ad] = bilinear(ba, aa, Fs);

% Frequency response
[H, f] = freqz(bd, ad, 1024, Fs); % Frequency vector in Hz

% Plot frequency response
figure;
plot(f, 20*log10(abs(H)));
title('Butterworth High-Pass Filter Frequency Response (Bilinear Transform)');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
grid on;

OUTPUT WAVEFORMS:

















SOURCE CODE:4  (C) IIR CHEBYSHEV TYPE I LOW-PASS FILTER DESIGN USING BILINEAR TRANSFORMATION

% LPF

% Specifications
order = 4;         % Filter order
Fs = 1000;         % Sampling frequency in Hz
Fc = 100;          % Desired cutoff frequency in Hz
Rp = 1;            % Passband ripple in dB (e.g., 1 dB)

% Pre-warp the analog cutoff frequency
Wc = 2 * Fs * tan(pi * Fc / Fs); % Pre-warped analog frequency (rad/s)

% Design analog Chebyshev Type I low-pass filter
[ba, aa] = cheby1(order, Rp, Wc, 's'); % 's' specifies analog filter

% Apply bilinear transformation to get digital filter
[bd, ad] = bilinear(ba, aa, Fs);

% Frequency response
[H, f] = freqz(bd, ad, 1024, Fs); % Frequency vector in Hz

% Plot frequency response
figure;
plot(f, 20*log10(abs(H)));
title('Chebyshev Type I Low-Pass Filter Frequency Response (Bilinear Transform)');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
grid on;












% HPF
% Specifications
order = 4;         % Filter order
Fs = 1000;         % Sampling frequency in Hz
Fc = 100;          % Desired cutoff frequency in Hz
Rp = 1;            % Passband ripple in dB

% Pre-warp the analog cutoff frequency
Wc = 2 * Fs * tan(pi * Fc / Fs); % Pre-warped analog cutoff frequency in rad/s

% Design analog Chebyshev Type I high-pass filter
[ba, aa] = cheby1(order, Rp, Wc, 'high', 's'); % Analog high-pass filter

% Bilinear transformation to convert to digital
[bd, ad] = bilinear(ba, aa, Fs);

% Frequency response
[H, f] = freqz(bd, ad, 1024, Fs); % Frequency vector in Hz

% Plot frequency response
figure;
plot(f, 20*log10(abs(H)));
title('Chebyshev Type I High-Pass Filter Frequency Response (Bilinear Transform)');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
grid on;






















































RESULT:


Thus the Butterworth and Chebyshev Lowpass, Highpass filter were designed using Bilinear and 
Impulse Invariant  transformations.


EX. NO:5 DATE:

DESIGN OF MULTIRATE SIGNALS



AIM:
To write a MATLAB Script to design multirate Signals(Decimation and Interpolation)


COMPONENTS REQUIRED:


PC, MATLAB software


A Simple Decimation Sytem

A Simple Interpolation System



%Down sample the spectrum signal by a factor of 2
n = 0:1024;
x = 1/4*sinc(1/4*(n-512)).^2; y = downsample(x,2);
f = -1:1/512:1;
X = freqz(x,1,2*pi*f); Y = freqz(y,1,2*pi*f); plot(f,abs(X)); subplot(2,1,1); plot(f,abs(X));
subplot(2,1,2);
plot(f,abs(Y));


OUTPUT WAVE: 

DECIMATION:



%Upsample the spectrum signal by a factor of 3

clear all, close all;clc; 
n = 0:1024;
f = -1:1/512:1;
x = 1/4*sinc(1/4*(n-512)).^2; 
y = upsample(x,3);
X = freqz(x,1,2*pi*f); 
Y = freqz(y,1,2*pi*f); 
h = fir1(128-1, 1/3);
yf = filter(h,1,y);
Yf = freqz(yf,1,2*pi*f); 
subplot(3,1,1); 
plot(f,abs(X)); 
subplot(3,1,2);
plot(f,abs(Y));
subplot(3,1,3);
plot(f,abs(Yf));

OUTPUT WAVE: 

INTERPOLATION:










































RESULT:
The multirate Interpolator and Decimator are performed using MATLAB script and the results were drawn for given factors.


EX. NO:6 DATE:
STUDY AND COMPARISON OF DIFFERENT NON- PARAMETRIC SPECTRAL ESTIMATION TECHNIQUES




AIM:

To estimate the Power Spectral Density (PSD) of a signal using various non-parametric methods such as:
Periodogram
Modified Periodogram
Bartlett Method
Welch Method

COMPONENTS REQUIRED:
PC, MATLAB software
	   
THEORY:
Spectrum estimation involves analyzing a signal in the frequency domain. Non-parametric methods do not assume a model for the signal but directly compute the spectral content using techniques based on the Fourier Transform.
1. Periodogram:
Estimates PSD by squaring the magnitude of the FFT of the signal.
2. Modified Periodogram:
Improves the periodogram by applying a window function (like Hamming) to reduce spectral leakage.
3. Bartlett Method:
Divides the signal into non-overlapping segments, computes periodograms for each, and averages them—	reducing variance.
4. Welch Method:
Enhances Bartlett by using overlapping segments and windowing to further reduce variance and leakage





% SPECTRUM ESTIMATION USING NON-PARAMETRIC METHODS

% Generate a sample signal (sum of sinusoids with noise)
Fs = 1000;                  % Sampling frequency (Hz)
t = 0:1/Fs:1-1/Fs;          % Time vector (1 second)
x = cos(2*pi*100*t) + 0.5*sin(2*pi*200*t) + randn(size(t))*0.2;
% a. PERIODROGRAM 
figure;
subplot(2,2,1);
[pxx,f] = periodogram(x, [], [], Fs);
plot(f, 10*log10(pxx));
title('a. Periodogram');
xlabel('Frequency (Hz)');
ylabel('Power/Frequency (dB/Hz)');
grid on;

% b. MODIFIED PERIODROGRAM (uses a window) 
subplot(2,2,2);
window = hamming(length(x));
[pxx_mod, f_mod] = periodogram(x, window, [], Fs);
plot(f_mod, 10*log10(pxx_mod));
title('b. Modified Periodogram (Hamming Window)');
xlabel('Frequency (Hz)');
ylabel('Power/Frequency (dB/Hz)');
grid on;
%  c. BARTLETT METHOD 
subplot(2,2,3);
segmentLength = 256;
[pxx_bartlett, f_bartlett] = pwelch(x, segmentLength, 0, [], Fs); % No overlap
plot(f_bartlett, 10*log10(pxx_bartlett));
title('c. Bartlett Method');
xlabel('Frequency (Hz)');
ylabel('Power/Frequency (dB/Hz)');
grid on;

% d. WELCH METHOD 
subplot(2,2,4);
segmentLength = 256;
overlap = segmentLength/2;
[pxx_welch, f_welch] = pwelch(x, hamming(segmentLength), overlap, [], Fs);
plot(f_welch, 10*log10(pxx_welch));
title('d. Welch Method');
xlabel('Frequency (Hz)');
ylabel('Power/Frequency (dB/Hz)');
grid on;










OUTPUT WAVEFORMS:











































RESULT:


Thus the different non-parametric spectral estimation techniques were studied and compared through matlab script programs.

CYCLE II

EX. NO: 7 DATE:

SINE WAVE GENERATION USING TMS320C6745 DSP




AIM
To generate a sinewave form using TMS320C6745 DSP KIT.
COMPONENTS REQUIREMENTS
CCS v4 TMS320C6745 KIT
USB Cable 5V Adapter
ALGORITHM

Sine wave generation
create a new project and initialize header file, input, output and variables to the particular data type.
Set the memory address which is used to store the input and output values.
The output values (real time) are stored in the dac channel 1 memory address (0xc0000000)
Then set the sampling frequency (sampf) and input frequency (inpf) to find the number of samples (nsamp) and sampling time(sampt). nsamp=sampf/inpf: sampt=1/sampf
Using trigonometry formulae find out the sine output. This output values come across -1 t0 1.This gain is not enough to display the sine wave, so increase the gain by multiplying with 2048.
Bitwise EX-OR operation is used to offset the sine values (+ve offset) and then move the gain increased value to DAC memory address.
Simulation output is displayed in Graph window & Real time output in CRO or DSO.

PROCEDURE
Open Code Composer Studio v4 .
In WorkSpace Launcher.
BROWSE  Select the project location and make one new folder, MAKE NEW FOLDER Type the Workspace name, OK  OK.
FILE  NEW  CCS PROJECT
Project name:  Type your project name.
Tick use default location.	NEXT
Project type: C6000.
Tick Debug And Release.	NEXT  NEXT.
Output type: Executable.
Device Variant : generic C67XX Device.
Device Endianness : little
Code Generation Tools: TI v6.1.12.
Run time support library: automatic.
Target content: none.	FINISH
FILE  NEW  SOURCE FILE
Source file: Type your projectname.c( .c extension is must ).
Type the program.
FILE  SAVE.
Paste the following board library files in workspace location.
Common folder (contains header files)
Gel folder (contains gel file)
Library folder(contains library files)
Paste the Linker file in the project location.(linker file is available in cd) Note: Those folders and linker file are availble at cd.

PROJECT  PROPERTIES  C/C++ BUILD  BASIC OPTION
Target processor version(--silicon version, -mv) : 6400+
 OK.
IN C/C++ BUILD,  INCLUDE OPTIONS (Add dir to #include search path(--include_path,-I)) select this add icon  and add the following three path by indivdually

 "${Diag}../../common/header"
 "${XDAIS_CG_ROOT}/packages/ti/xdais"
 "${C6000_CSL_CG_ROOT}/include"
FILE  NEW  TARGET CONFIGURATION FILE
file name: projectname. ccxml (.ccxml extension is must)
Connection: Texas Instrument XDS100 v1 USB Emulator.
Device: TMS320C6745.  SAVE  TARTGET
CONFIGURATION C674X_0 BROWSE, browse the workspace location, open the gel folder and select the GEL file.  OPEN SAVE.
In C/C++ Project window, Right click the project REBUILD PROJECT.
Connections :
Connect the usb cable, PC to KIT.
Connect the 5v adapter.
Power on the kit.
TARGET  DEBUG ACTIVE PROJECT.
TARGET  RUN.(wait to generate samples)
TARGET  HALT.
TOOLS  GRAPH  SINGLE TIME
Acquirstion buffer size : 256
Index increment : 1
Start address : 0xC0000000.
Display data size : 256  Ok.

SOURCE CODE:

#include<stdio.h> #include<math.h> #define PI 3.14

void main()
{
const float sampf = 1024000.0;// Sampling frquency is fixed
const int inpf = 4000; // change the input frquency from 1khz to
//8khz(1000 to 8000)
float sampt;
double teta;
short value,*sinout;
int i,count,nsamp,value1;

sinout = (short *)0xc0000000; sampt = 1/sampf;
nsamp = sampf/inpf;

printf("\n Sampling Frequency is : %f",sampf); printf("\n Sampling Time is :%f",sampt); printf("\n Input Frequency is : %d",inpf); printf("\n The number of Sample is : %d",nsamp);

for(i=0;i<400;i++)
*(sinout+i)=0;
for(count=0;count<nsamp;count++)
{
teta = (2 * PI * inpf * sampt * count); printf("\nteta = %lf",teta);

value = sin(teta)*1024;	//Set amplitude by varying the
value //0 to 1024 printf("\t sin %lf Value is : %d",teta,value);

value1 = value&0x0000FFFF;
*sinout++ = value1;
}
}

OUTPUT














RESULT

Thus, the Sine waveform generation was generated and the sine samples is stored at memory location(0xc0000000).


EX. NO: 8
DATE:

SQUARE WAVE GENERATION USING TMS320C6745 DSP





AIM
To Generate a Square wave form using TMS320C6745 DSP KIT.


COMPONENTS REQUIREMENTS

CCS v4 TMS320C6745 KIT
USB Cable 5V Adapter

ALGORITHM


Create a new project and initialize header file, input, output and variables to the particular data type.
Set the memory address which is used to store the input and output values.
The output values (real time) are stored in the DAC Channel 1 memory address (0xc0000000).
The total size of the triangular wave is 4096.The increment order starts from 1024 up to 1024 and decrement order starts from 1024 up to -1024 (totally 4096).
The first “for” loop is used for increment order and second “for” loop is used for decrement order. This is nused for simulation output. The while loop is used to get real time output.
Simulation output is displayed in Graph window & Real time output in the CRO.

PROCEDURE
The procedure 1 to 11 steps are same as previous experiment.
TARGET  RUN.(wait few seconds generate samples)
TARGET  HALT.
TOOLS  GRAPH  SINGLE TIME
Acquirstion buffer size : 1000
Index increment : 1
Start address : 0xC0000000.
Display data size : 1000  Ok.


SOURCE CODE:
#include <stdio.h> #include <math.h> void main()
{
int *Square;
int i;
Square = (int *)0xC0000000;
while(1)
{
for(i=0;i<50;i++)
{
*Square++ = 0x0000FFFF;
}
for(i=0;i<50;i++)
{
*Square++ = 0x0;
}
}
}

OUTPUT



















RESULT
Thus, the Square waveform was generated and samples is stored at memory
location(0xC0000000).


EX. NO: 9
DATE:

TRIANGLE WAVE GENERATION USING TMS320C6745 DSP




AIM
To Generate a Triangle wave form using TMS320C6745 DSP KIT.


COMPONENTS REQUIREMENTS


CCS v4 TMS320C6745 KIT
USB Cable 5V Adapter

ALGORITHM


Create a new project and initialize header file,input,output and variables to the particular data type.
Set the memory address which is used to store the input and output values.
The output values (real time) are stored in the DAC Channel 1 memory address (0xc0000000).
The total size of the triangular wave is 4096.The increment order starts from 1024 up to 1024 and decrement order starts from 1024 up to -1024 (totally 4096).
The first “for” loop is used for increment order and second “for” loop is used for decrement order.This is used for simulation output.The while loop is used to get real time output.
Simulation output is displayed in Graph window & Real time output in the CRO.

PROCEDURE


The procedure 1 to 11 steps are same as previous experiment.
TARGET  RUN.(wait few seconds generate samples)
TARGET  HALT.
TOOLS  GRAPH  SINGLE TIME
Acquirstion buffer size : 500
Index increment : 1
Start address : 0xC0000000.
Display data size : 500  Ok.


SOURCE CODE:


#include <stdio.h> #include <math.h> void main()
{
int *Triangle; int i=0,j=0;
Triangle = (int *)0xC0000000;


while(1)
{


for(i=0;i<50;i++)	//set frequency value
{

j=j+1;	//set amplitude value
*Triangle++ = j;
}
for(i=50;i>0;i--)
{
j=j-1;
*Triangle++ = j;
}
}
}

OUTPUT
















RESULT

Thus, the Triangle waveform was generated and samples is stored at memory location(0xC0000000).


EX. NO: 10
 DATE:

SAWTOOTH WAVE GENERATION USING TMS320C6745 DSP




AIM
To Generate a Sawtooth wave form using TMS320C6745 DSP KIT.


COMPONENTS REQUIREMENTS


CCS v4 TMS320C6745 KIT
USB Cable 5V Adapter

ALGORITHM


create a new project and initialize header file,input,output and variables to the particular data type.
Set the memory address which is used to store the input and output values.
The output values (real time) are stored in the DAC channel 1 memory address(0xc0000000).
The total size of the sawtooth wave is 4096.The increment order start from - 1024 up to 1024 and decrement order start from 1024 up to -1024 (totally 4096).
The first “for” loop is used for increment order and second for loop is used for decrement order.This is used for simulation output.The while loop used to get real time output.
Simulation output is displayed in Graph window & Real time output in CRO.

PROCEDURE

The procedure 1 to 11 steps are same as previous experiment.
TARGET  RUN.(wait few seconds generate samples)
TARGET  HALT.
TOOLS  GRAPH  SINGLE TIME
Acquirstion buffer size : 500
Index increment : 1
Start address : 0xC0000000.
Display data size : 500  Ok.

SOURCE CODE

#include <stdio.h> #include <math.h> void main()
{
int *Sawtooth;
int i=0,j=0;
Sawtooth = (int *)0xC0000000;



while(1)
{


for(i=0;i<100;i++)	//set the frequency value
{

j=j+1;	//set the amplitude value
*Sawtooth++ = j;
}

j=0; i=0;
*Sawtooth++ = j;
}
}

OUTPUT



















RESULT
Thus, the Sawtooth waveform was generated and samples is stored at memory location(0xC0000000).

EX. NO: 11
Date:	LINEAR CONVOLUTION USING TMS320C6745 DSP

AIM
To perform the Linear Convolution of two given discrete sequence in
TMS320C6745 KIT.


COMPONENTS REQUIREMENTS


CCS v4 TMS320C6745 KIT
USB Cable 5V Adapter

ALGORITHM


First declare the two inputs (x&h) and one output memory (y),Declare the variables (i,k,n,l,m) for loop operation.
Declare the two input sequences length(xnlength&hnlength).
Give the length of xnlength & hnlength value.
Move the input sequence length data into two variables(l,m).
Give the input of x& hnvalue.
Clear the input,output and sequence length memories.
Declare the outer for loop of variables n is initially zero to formulae (l+m-l).
Next declare the inner loop of variables k is initially zero to outer loop of variable n.
Finally declare the linear convolution formulae into a loop operation and the output is stored to the y[n] location.

PROCEDURE

Open Code Composer Studio v4 .
In WorkSpace Launcher.
BROWSE  Select the project location and make one new folder, MAKE NEW FOLDER Type the Workspace name, OK  OK.
FILE  NEW  CCS PROJECT
Project name:  Type your project name.
Tick use default location.	NEXT
Project type: C6000.
Tick Debug And Release.	NEXT  NEXT.
Output type: Executable.
Device Variant : generic C67XX Device.
Device Endianness : little
Code Generation Tools: TI v6.1.12.
Run time support library: automatic.
Target content: none.	FINISH
FILE  NEW  SOURCE FILE
Source file: Type your projectname.c( .c extension is must ).
Type the program.
FILE  SAVE.
Paste the following board library files in workspace location.
Common folder (contains header files)
Gel folder (contains gel file)
Library folder(contains library files)
Paste the Linker file in the project location.(linker file is available in cd) Note: Those folders and linker file are availble at cd.
PROJECT  PROPERTIES  C/C++ BUILD  BASIC OPTION
Target processor version(--silicon version, -mv) : 6400+

 OK.


IN C/C++ BUILD,  INCLUDE OPTIONS (Add dir to #include search path(--include_path,-I)) select this add icon  and add the following three path by indivdually

 "${Diag}../../common/header"
 "${XDAIS_CG_ROOT}/packages/ti/xdais"
 "${C6000_CSL_CG_ROOT}/include"
FILE  NEW  TARGET CONFIGURATION FILE
file name: projectname. ccxml (.ccxml extension is must)
Connection: Texas Instrument XDS100 v1 USB Emulator.
Device: TMS320C6745.  SAVE  TARTGET
CONFIGURATION C674X_0 BROWSE, browse the workspace location, open the gel folder and select the GEL file.  OPEN SAVE.
In C/C++ Project window, Right click the project REBUILD PROJECT.
Connections :
Connect the usb cable, PC to KIT.
Connect the 5v adapter.
Power on the kit.
TARGET  DEBUG ACTIVE PROJECT.
VIEW  MEMORY.
In right side, memory window will open. Type the adrress and give the input at particular location.

Give the length as follow:
Xnlength	hnlength
0xc0010000-4	0xc0100000-4

Give the input as follow:
X(n)	h(n)
0xC0000000 – 00000001	0xC0000100 – 00000001
0xC0000004 – 00000001	0xC0000104 – 00000001
0xC0000008 – 00000001	0xC0000108 – 00000001
0xC000000C – 00000001	0xC000010C – 00000001

TARGET  RUN.
TARGET  HALT.
See the Output at Particular location: Example :
0xC0001000 – 00000001
0xC0001004 – 00000002
0xC0001008 - 00000003
0xC000100C - 00000004
0xC0001010 - 00000003
0xC0001014 - 00000002
0xC0001018 – 00000001

SOURCE CODE
#include<stdio.h> void main()
{
int *x,*h,*y,i,n,k,l,m,*xnlength,*hnlength;

xnlength=(int *)0xc0010000; hnlength=(int *)0xc0100000; l=*xnlength;
m=*hnlength;

x = (int *)0xc0000000; h = (int *)0xc0000100; y = (int *)0xc0001000;

for(i=0;i<(l+m-1);i++)
{
y[i]=0;
x[l+i]=0;
h[m+i]=0;
}


for(n=0;n<(l+m-1);n++)
{
for(k=0;k<=n;k++)
y[n] = (y[n]) + ((x[k])*(h[n-k]));
}
while(1);
}








RESULT
Thus, the Linear Convolution of two given discrete sequence has performed and the result is stored at memory location(0xc0001000).


EX. NO: 12
 DATE:

CIRCULAR CONVOLUTION USING TMS320C6745 DSP



AIM


To perform the Circular Convolution of two given discrete sequence in TMS320C6745 KIT.

COMPONENTS REQUIREMENTS

CCS v4 TMS320C6745 KIT
USB Cable 5V Adapter

ALGORITHM


First declare the two input variables (xn&hn) and one output variables (y),Declare the variables (i,n,m,n,l,a,b,k) for loop operation.
Declare the two input sequences length(xnlength&hnlength).
Give the length of xnlength & hnlength value.
Give the input of xn & hn value.
Next check whether xn length greater or hn length is greater.Take the greater number that is the length of the circular convolution length(n).
Then do memory clear operation.
.Next perform convolution operation to two input sequences.For hn[n-k] output is lesser than 0 means add n (hn[n-k+n],this is perform shifting operation of second sequences.
.The output is stored to the y[n] location.

PROCEDURE

The procedure 1 to 11 steps are same as previous experiment.
VIEW  MEMORY
In right side, memory window will open. Type the adrress and give the input at particular location.
Give the length as follow:
Xnlength	hnlength
0xc0010000-4	0xc0100000-4

Give the input as follow:
X(n)	h(n)
0xC0000000 – 00000001	0xC0000100 – 00000001
0xC0000004 – 00000001	0xC0000104 – 00000001
0xC0000008 – 00000001	0xC0000108 – 00000001
0xC000000C – 00000001	0xC000010C – 00000001

TARGET  RUN.
TARGET  HALT.



See the Output at Particular location: Example :
0xC0001000 – 00000004
0xC0001004 – 00000004
0xC0001008 - 00000004
0xC000100C - 00000004

SOURCE CODE

#include<stdio.h> void main()
{
int *xn,*hn,*y,*xnlength,*hnlength; int i,n,m,a,b,l,k;
xn = (int *)0xc0000000; hn = (int *)0xc0000100; y = (int *)0xc0001000;
xnlength=(int *)0xc0010000; hnlength=(int *)0xc0100000;

a=*xnlength; b=*hnlength; if(a<b)
k=b; else k=a;
for(i=0;i<k;i++)
{
y[i]=0;
xn[a+i]=0; hn[b+i]=0;
}
for(n=0;n<k;n++)
{
for(m=0;m<k;m++)
{
l=n-m; if(l<0) l=l+k;
y[n]=y[n]+(xn[m]*hn[l]);
}
}
}








RESULT
Thus, the Circular Convolution of two given discrete sequence has performed and the result is stored at memory location(0xC0001000).


EX. NO: 13 DATE:

STUDY OF VARIOUS ADDRESSING MODES





AIM

To Study the various addressing mode of TMS320C6745 DSP processor.


COMPONENTS REQUIREMENTS


CCS v4 TMS320C6745 KIT
USB Cable 5V Adapter


ADDRESSING MODES
The addressing modes in TMS320C6745
Register addressing mode
Memory mapped addressing mode
Linear addressing mode
Circular addressing mode


Register Addressing Mode: Example SOURCE CODE:
32bit Addition:

.text	; text file indication
.def _c_int00	; Memory address definition
_c_int00:	; Memory initialization

MVKL0xC0000000, A1	; Lower 16bit move to A1 Register MVKH	0xC0000000, A1  ; Higher 16bit move to A1 Register MVKL0x12345678, A2	; first input
MVKH	0x12345678, A2

MVKL0x8799F593, A3	; second input MVKH	0x8799F593, A3








ADD
A2, A3, A4
; Add A2+A3 and move to A4 Register
STW
A4,*A1
; Store A4value to A1 Register
NOP


; No operation or instruction cycle delay
NOP




.END


; End of the program

Input	Output
12345678 ---- A2	A1(0XC0000000)	99CE4COB
8799F593	A3

Memory mapped register addressing mode:
Example program:
Blinking LED:

.text	; text file indication
.def _c_int00	; Memory address definition
_c_int00:	; Memory initialization

MVKL0x01E26010, A1	; Set the Gpio 0 Direction Register address MVKH0x01E26010, A1
MVKL0xF000FFFF, A2	; Set 0 value for output LED in Gpio Direction Register MVKH0xF000FFFF, A2

STW	A2, *A1	; Store A2 value into A1 Register
ADD	A1, 4, A1	; Add 4 for accessing Gpio out data Register address (0X01E26014)
MVKL0x0FFF0000, A2	; Set FFF for LED ON MVKH0x0FFF0000, A2





on:







off:






Delay:
MVKL0x00000000, A3	; Set 000 for LED OFF MVKH0x00000000, A3

STW	A2,*A1	; Store A2 value into A1 Register
NOP	2	; Two instruction cycle delay

MVKLoff, B1		; off address move to B1 Register MVKH	off, B1
B	Delay	; Call delay
NOP	7	; Seven instruction cycle delay
STW	A3, *A1	; Store A3 value into A1 Register NOP	2
MVKLon, B1		; on address move to B1 Register MVKH	on, B1
B	Delay	; Call delay NOP	7

MVKL0x00FFFFFF, B0	; Set delay MVKH	0x00FFFFFF, B0










Loop3
SUB
B0, 1, B0
; FFFFFF Times decrement looping


NOP
3


[B0]
B
Loop3
; Call loop3


NOP
7
; if B0=0, Go to B1


B
B1
; Return to off and on simultaneously

Output:
The LED will blink on and off simultaneously in the TMS320C6745 DSP kit.


Linear Addressing Mode Example program:
Linear convolution:

.text	; text file indication
.def _c_int00	; Memory address definition
_c_int00:	; Memory initialization
mvkl 0xC0000000,a4	; Lower 16bit move to a4 Register mvkh 0xC0000000,a4	; Higher 16bit move to a4 Register mvkl 0xC0000100,a5
mvkh  0xC0000100,a5
add	a4,10h,a4	;Add a4+10h for ten memory allocation
nop	2	;2 instruction cycle delay
add	a5,10h,a5	; Add a5+10h for ten memory allocation nop	2
mvkl	0xC0000300,a3	;0xc0000300	address	move	to	a3 Register
mvkh
0xC0000300,a3


mvkl
0xC0000200,a6
;	0xc0000200	address	move	to	a6
Register
mvkh

0xC0000200,a6


mvkl
8h,b2
;8h value move to b2 for looping
mvkh
8h,b2


zer:


;Zero function
mvkl
00000000h,a2
;0h move to a2 Register
mvkh
00000000h,a2


stw
a2,*a3++
;clear
the
a3
memory
address
location
nop
7












stw
a2,*a4++
;clear
the
a4
memory
address
location
nop
7












stw
a2,*a5++
;clear
the
a5
memory
address
location
nop
7












stw
a2,*a6++
;clear
the
a6
memory
address
location
nop
7












sub
b2,1h,b2
;8 times decrement looping operation
nop
2


[b2]
b	zer
;if(b2>0), go to zer function



nop	6	;if(b2<0), go to next operation
mvkl	0xC0000000,a4	;0xc0000000	address	move	to	a4 Register
mvkh  0xC0000000,a4
mvkl	7h,b1	;7h value move to b1 for looping mvkh 7h,b1
mvkl	0xC0000200,a9	;0xc0000200	address	move	to	a9 Register
mvkh 0xC0000200,a9 start1:
mvkl 0xC0000100,a1	;	0xc0000100	address	move	to	a1 Register
mvkh 0xC0000100,a1
mvkl	0xC0000300,a3	;	0xc0000300	address	move	to	a3 Register
mvkh 0xC0000300,a3
ldw	*a4++[1],a8	;Increment the a4 address and a4 value load to a8
nop	6	;Register
stw	a8,*a3	;Store a8 value to a3 Register address nop	6
mvkl	4h,b0	;4h value move to b0 register for looping mvkh 4h,b0
nop	3
MVKL 00000000H,a7	;0h value move to a7 Register MVKh 00000000H,a7

loop1:

ldw *a1++,a5	;a1 Register value lode to a5 Register and increment the a1 Register address














address
nop	6
ldw *a3++,a6	;a3 Register value lode to a6 Register and
nop	6	; increment the a3 address
mpy	a5,a6,a6	;Multiply a5*a6 and move to a6 Register nop	4
add	a7,a6,a7	;Add a7+a6 and move to a7 Register nop	2
sub	b0,1,b0	;Decrement looping for 4 times nop	2
[b0]	b	loop1	;if(b0>0) , go to loop1
nop	7	;if(b0<0) , go to next operation
stw	a7,*a9++[1]	;Store a7 value in incremented a9 Register
nop	6
mvkl	4h,b0	;4h value move to b0 register for looping
mvkh  4h,b0
mvkl	0xC0000300,b3	; 0xc0000300 address move to a3 Register mvkh 0xC0000300,b3
ldw	*b3,b4	;load b3 value into b4 Register nop	6










loop2:
ldw
*+b3(4),b5
;b3 value load to b5 Register but b3 address not


nop stw nop mv nop sub nop
6
b4,*++b3 6
b5,b4 2
b0,1,b0 2
;incremented
;b4 value store to incremented b3 Register

;Move b5 Register to b4 Register

;Decrement looping for 4 times
[b0]
b
loop2
;if(b0>0) , go to loop2


[b1]
nop sub nop b nop
6 b1,1,b1 2
start1 7
;if(b0<0) , go to next operation
;Decrement looping for 7times

;if(b1>0) , go to start1
;if(b1<0) , go to next operation
halt:
b nop
halt 7
;End of the operation



Input:


Output:
x(n)
h(n)
y(n)
0XC0000000 --- 1
0XC0000100 --- 1
0XC0000200 --- 1
0XC0000004 --- 2
0XC0000104 --- 2
0XC0000204 --- 4
0XC0000008 --- 3
0XC0000108 --- 3
0XC0000208 --- A
0XC000000C --- 4
0XC000010C --- 3
0XC000020C --- 13




0XC0000210 --- 17




0XC0000214 --- 15




0XC0000208 --- C

Circular Addressing Mode:
Example program:

Circular convolution:
.text	;text file indication
.def _c_int00	;Memory address definition
_c_int00:	;Memory initialization
mvkl	0xC0000000,a12	;Lower 16bit move to a12 Register mvkh 0xC0000000,a12	;Higher 16bit move to a12 Register mvkl	0xC0000100,a13	;0XC0000100 move to a13 Register mvkh 0xC0000100,a13
add	a12,10h,a12	;Add a12+10h and move to a12 Register

for





filzer:

add	a13,10h,a12	;ten memory allocation nop	2
mvkl	8h,b0	;Move 8h value to b0 Register for looping mvkh 8h,b0
zero	a5	;zero value move to a5 Register stw	a5,*a12++[1]	;Memory clear operation

nop	5
stw	a5,*a12++[1]	;Memory clear operation nop	5
sub	b0,1,b0	;Decrement looping for 8 times nop	2
[b0]	b	filzer	;if(b0>0) ,go to filzer function nop	7	;if(b0<0) ,go to next operation
mvkl	0xC0000300,a12	;0XC0000300 move to a12 Register mvkh 0xC0000300,a12
nop
mvkl	0xC0000100,a13	;0XC0000100 address move to a13 Register mvkh 0xC0000100,a13
nop
mvkl	4h,b0	;4h value move to b0 Register mvkh 4,b0
nop another:
ldw	*a13++[1],a4	;Load incremented a13 Register value to a4 Register
nop	6
stw	a4,*a12++[1]	;Store a4 value to incremented a12 Register

address

nop	5
sub	b0,1,b0	;Four times decrement loop nop

[b0]		b	another	;if(b0>0) ,go to another function Nop			;if(b0<0) ,go to next operation nop		5
mvkl	0xC0000300,a14	;0XC0000300 address move to a14 Register mvkh 0xC0000300,a14
nop
ldw	*++a14[1],a4	;Incremented a14 Register value load to a4 Register
nop	5
ldw	*++a14[2],a5	;2 times incremented a14 address value load to a5	nop	5	;Register
stw	a4,*a14--[2]	;Store a4	value to 2times decremented a14 register	nop		;address
nop	5
stw	a5,*a14	;Store a5 Register value to a14 Register address nop
nop	5
mvkl	0xC0000200,a10	;0XC0000200 address move to a10 Register mvkh 0xC0000200,a10
nop
mvkl	4h,b2	;4h value move to b2 Register mvkh 4h,b2
nop nextdata:
mvkl 0xC0000300,a11	;0XC0000300 address move to a11 Register mvkh 0xC0000300,a11
nop












mvkl
0xC0000000,a12
;0XC0000000 address move to a12 Register


mvkh
0xC0000000,a12




nop






mvkl
4,b0
;4h value move to b0 Register


mvkh
4,b0




nop






mvkl
0h,a9
;0h value move to a9 Register


mvkh
0h,a9




nop




next:








ldw
*a11++[1],a4 ;
;Load incremented a11 value to a4 Register


nop
6




ldw
*a12++[1],a5
;Load incremented a12 value to a5 Register


nop
6




mpy
a4,a5,a6
;Multiply a4*a5 and move to a6 Register


nop
3




add
a6,a9,a9
;Add a6*a9 and move to a9 Register


nop
3




sub
b0,1,b0
;Decrement loop for four times


nop
3


[b0]
b
next
;if(b0>0) , go to next operation


Nop


;if(b0<0) , go to next operation


nop
5




stw
a9,*a10++[1]
;Store a9 value to incremented a10 Register


nop


;address


nop
5




mvkl
back,b11
;back address move to b11 Register


mvkh
back,b11




nop






b
shift
;Go to shift function


nop






nop
5


back:








sub
b2,1,b2
;Decrement loop for four times


nop
3


[b2]
b
nextdata
;if(b2>0) , go to next data


Nop


;if(b2<0) , go to halt operation


nop
5



halt:	;End of the program


b
halt




nop






nop
5


shift:








mvkl
0xC0000300,a5
;0XC0000300 address move to a5 Register


mvkh
0xC0000300,a5




nop






mvkl
3h,b1
;3h value move to b1 Register


mvkh
3h,b1




nop


















ldw
*++a5[3],a4
;3 times incremented a5 value move to a4





shloop:






[b1]
nop mvkl mvkh nop add nop
ldw nop stw nop sub nop b
6
0xC0000300,a5
0xC0000300,a5

a5,8h,a5 2

*a5++[1],a6 6
a6,*a5--[2] 6
b1,1,b1

shloop
;Register
;0XC0000300 address move to a5 Register


;Add a5+8h and move to a5 Register


;Incremented a5 value move to a6 Register

;Store a6 value to 2 times decremented a5
;Register
;Decrement loop for 3 times

;if(b1>0) , go to shloop


Nop
nop
6
;if(b1<0) , go to next operation


mvkl mvkh nop
stw
0xC0000300,a5
0xC0000300,a5

a4,*a5
;0XC0000300 address move to a5 Register


;Store a4 value to a5 Register
nop b nop
nop
6
b11

6
;Go to back function



Input:


Output:
x(n)
h(n)
y(n)
0XC0000000 --- 1
0XC0000100 --- 1
0XC0000200 --- 18
0XC0000004 --- 2
0XC0000104 --- 2
0XC0000204 --- 19
0XC0000008--- 3
0XC0000108 --- 3
0XC0000208 --- 16
0XC000000C --- 4
0XC000010C --- 3
0XC000020C --- 13


ASM General Procedure to work C6745:
Open Code Composer Studio v4 .
In WorkSpace Launcher.
BROWSE  Select the project location and make one new folder, MAKE NEW FOLDER Type the Workspace name, OK  OK.
FILE  NEW  CCS PROJECT
Project name:  Type your project name.
Tick use default location.	NEXT
Project type: C6000.
Tick Debug And Release.	NEXT  NEXT.
Output type: Executable.

Device Variant : generic C67XX Device.
Device Endianness : little
Code Generation Tools: TI v6.1.12.
Run time support library: automatic.
Tick Treat as an Assembly-only project.
Target content: none.	FINISH
FILE  NEW  SOURCE FILE
Source file: Type your add.asm( .asm extension is must ).
Type the program.
FILE  SAVE.
Paste the following board library files in workspace location.
Common folder (contains header files)
Gel folder (contains gel file)
Library folder(contains library files)
Paste the asm linker file and vectors.asm in the project location.(asm linker file and vectors.asm is available in cd)
Note: Those folders and linker file are availble at cd.
PROJECT  PROPERTIES  C/C++ BUILD  BASIC OPTION
Target processor version(--silicon version, -mv) : 6400+
IN C/C++ BUILD,  INCLUDE OPTIONS (Add dir to #include search path(--include_path,-I)) select this add icon  and add the following three path by indivdually
 "${Diag}../../common/header"
 "${XDAIS_CG_ROOT}/packages/ti/xdais"
 "${C6000_CSL_CG_ROOT}/include"
FILE  NEW  TARGET CONFIGURATION FILE
file name: projectname. ccxml (.ccxml extension is must)
Connection: Texas Instrument XDS100 v1 USB Emulator.
Device: TMS320C6745.  SAVE  TARTGET CONFIGURATION
C674X_0 BROWSE, browse the workspace location, open the gel folder and select the GEL file.  OPEN SAVE.
In C/C++ Project window, Right click the project REBUILD PROJECT.
Connections :
Connect the usb cable, in between PC to KIT.
Connect the 5v adapter and Power on the kit.

TARGET  DEBUG ACTIVE PROJECT.(Then see out at corresponding place after run)
VIEW  MEMORY
In right side, memory window will open. Type the output adrress 0xC0001000
TARGET  RUN.
TARGET  HALT.
See the Output at Particular location: 0xC0000000 – 99CE4C0B........




























RESULT:
The study of various addressing modes of TMS320C6745 DSP processor was verified.


