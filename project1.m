function varargout = project1(varargin)
% PROJECT1 MATLAB code for project1.fig
%      PROJECT1, by itself, creates a new PROJECT1 or raises the existing
%      singleton*.
%
%      H = PROJECT1 returns the handle to a new PROJECT1 or the handle to
%      the existing singleton*.
%
%      PROJECT1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT1.M with the given input2 arguments.
%
%      PROJECT1('Property','Value',...) creates a new PROJECT1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project1

% Last Modified by GUIDE v2.5 10-May-2024 22:16:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project1_OpeningFcn, ...
                   'gui_OutputFcn',  @project1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before project1 is made visible.
function project1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to project1 (see VARARGIN)

% Choose default command line output for project1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes project1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function uipanel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5


% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton6


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)

%**********************************Histogram Equalization******************
 a=getappdata(0,'a');
 Input_image=a;  
 Gray_Image = RGBtoGray_Luminance(Input_image);
 [rows, cols] = size(Gray_Image);
 histogram = zeros(256, 1);
 for i = 1:rows
     for j = 1:cols
           pixelValue = Gray_Image(i, j);
           histogram(pixelValue + 1) = histogram(pixelValue + 1) + 1;
     end
 end
 runningSum = cumsum(histogram);
 maxRunningSum = max(runningSum);
 normalizedSum = runningSum / maxRunningSum;
 New_Range = 255; 
 transformedSum = round(normalizedSum * New_Range);
 Output_Image = zeros(rows, cols);
 for i = 1:rows
    for j = 1:cols
         pixelValue = Gray_Image(i, j);
         Output_Image(i, j) = transformedSum(pixelValue + 1);
    end
 end
Output_Image = uint8(Output_Image);
figure, imshow(Output_Image), title('Histogram Equalization');



function GaussianSize_Callback(hObject, eventdata, handles)
% hObject    handle to GaussianSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GaussianSize as text
%        str2double(get(hObject,'String')) returns contents of GaussianSize as a double


% --- Executes during object creation, after setting all properties.
function GaussianSize_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GaussianSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Sigma_Callback(hObject, eventdata, handles)
% hObject    handle to Sigma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Sigma as text
%        str2double(get(hObject,'String')) returns contents of Sigma as a double


% --- Executes during object creation, after setting all properties.
function Sigma_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Sigma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function width_Callback(hObject, eventdata, handles)
% hObject    handle to width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of width as text
%        str2double(get(hObject,'String')) returns contents of width as a double


% --- Executes during object creation, after setting all properties.
function width_CreateFcn(hObject, eventdata, handles)
% hObject    handle to width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function height_Callback(hObject, eventdata, handles)
% hObject    handle to height (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of height as text
%        str2double(get(hObject,'String')) returns contents of height as a double


% --- Executes during object creation, after setting all properties.
function height_CreateFcn(hObject, eventdata, handles)
% hObject    handle to height (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)  

%********************************Contrast Image*********************
            New_Min=get(handles.NewMin,'string');
            New_Min=str2num(New_Min);

            New_Max=get(handles.NewMax,'string');
            New_Max=str2num(New_Max);
            
            a=getappdata(0,'a');
            Input_image=a;  

            Gray_Image = RGBtoGray_Luminance(Input_image);
            [rows, cols] = size(Gray_Image);
            Old_Min = min(Gray_Image(:));
            Old_Max = max(Gray_Image(:));
            Output_Image = zeros(rows, cols);
            for i = 1:rows
                for j = 1:cols
                    Old_Value = Gray_Image(i, j);
                    New_Value = ((Old_Value - Old_Min) / (Old_Max - Old_Min)) * (New_Max - New_Min) + New_Min;
                    
                    if New_Value > 255
                        New_Value = 255;
                    elseif New_Value < 0
                        New_Value = 0;
                    end
                    Output_Image(i, j) = New_Value;
                end
            end
            Output_Image = uint8(Output_Image);

            %axes(handles.axes1);
            %imshow (Output_Image);
    %figure, imshow(Input_image), title('Original');
    figure, imshow(Output_Image), title('Contrast Image');



function NewMin_Callback(hObject, eventdata, handles)
% hObject    handle to NewMin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NewMin as text
%        str2double(get(hObject,'String')) returns contents of NewMin as a double


% --- Executes during object creation, after setting all properties.
function NewMin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NewMin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NewMax_Callback(hObject, eventdata, handles)
% hObject    handle to NewMax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NewMax as text
%        str2double(get(hObject,'String')) returns contents of NewMax as a double


% --- Executes during object creation, after setting all properties.
function NewMax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NewMax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in menu.
function menu_Callback(hObject, eventdata, handles)
%****************************************Graysecal********************
val=get(handles.menu,'value');
str=get(handles.menu,'string');

switch str{val}
    case 'Singlecolorchannel'
        %Single color channel:-
        %-------------------------
        a=getappdata(0,'a');
        img=a;
        gray_image=img(:,:,1);
        gray_image=uint8(gray_image);
        gray_image=uint8(gray_image);
        figure,imshow(gray_image),title('Gray (Single color channel) ');
    case 'Averaging'
        %Averaging:-
        %---------------
        a=getappdata(0,'a');
        img=a;
        gray_image=(img(:,:,1)+img(:,:,2)+img(:,:,3))/3;
        gray_image=uint8(gray_image);
        figure,imshow(gray_image),title('Gray (Averaging) ');
    case 'Luminance'
        %Luminance:-
        %--------------
        a=getappdata(0,'a');
        rgb=a;
        gray=(0.3*rgb(:,:,1))+ (0.59*rgb(:,:,2))+(0.11*rgb(:,:,3));
        gray = uint8(gray);
        figure,imshow(gray),title('Gray (Luminance) ');
    case 'Desaturation'
        %Desaturation:-
        %-----------------
        a=getappdata(0,'a');
        img=a;
        [row,cl,ch]=size(img);
        for k=1:ch
            for i=1:row
                for j=1:cl
                    gray_image(i,j,k)=(max(img(i,j,:))+min(img(i,j,:)))/2;
                end
            end
        end
        gray_image=uint8(gray_image);
        figure,imshow(gray_image),title('Gray (Desaturation) ')
    case 'Decomposing'
        %Decomposing:-
        %---------------
        a=getappdata(0,'a');
        img=a;
        xgray=min(img(:,:,1),img(:,:,2));
        gray_image=min(xgray,img(:,:,3));
        gray_image=uint8(gray_image);
        figure,imshow(gray_image),title('Gray (Decomposing) ') 

end

function menu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton21.
function radiobutton21_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton21


% --- Executes on button press in radiobutton22.
function radiobutton22_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton22


% --- Executes on button press in radiobutton23.
function radiobutton23_Callback(hObject, eventdata, handles)
%************************************Resize*************************************
if (get(hObject,'value')==get(hObject,'Max'))
    % Direct Mapping 0-Order
    %=======================
    fact_row=get(handles.width,'string');
    fact_row=str2num(fact_row);
    fact_column=get(handles.height,'string');
    fact_column=str2num(fact_column);
    a=getappdata(0,'a');
    Input_image=a;
% Direct Mapping 0-order
    [r, c, ch]=size(Input_image);
    imshow(a);
    fact=fact_row;
    New_r = r*fact;
    New_c = c*fact;
    New_im = zeros(New_r,New_c, ch);
    for k=1:ch
        for i=1:r
            for j=1:c
                New_im(i*fact+1-fact:i*fact,j*fact+1-fact:j*fact,k)= Input_image(i,j,k);
            end
        end
    end

     New_im = uint8(New_im);
     %axes(handles.axes1);
     %imshow (New_im);
     %figure,imshow(Input_image),title('Original');
     figure,imshow(New_im),title('Resized (DM_0 order)');
end
assignin('base','button',button);
% hObject    handle to radiobutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton23


% --- Executes on button press in radiobutton24.
function radiobutton24_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton24



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
%Quantization
%=============
a=getappdata(0,'a'); 
Old_Image=a;

K=get(handles.input2,'string');
K=str2num(K);

GrayLevel = 2^k;

Gap = 256/GrayLevel;

Colors = Gap:Gap:256;

[rows, cols,chs]=size(Old_Image);

New_Image = zeros(rows,cols,chs);

for ch=1:chs
    for row=1:rows
        for col=1:cols
             Temp=Old_Image(row, col,ch)/Gap;
        
             Index = floor (Temp);
             if Index==0
                 Index=1;
             end
             New_Image(row, col,ch) = Colors(Index);
        end

    end

end
        
      

output = uint8(New_Image);

figure,imshow(output),title('Quantization');


% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% Geometric Mean Filter :-
%========================
a=getappdata(0,'a'); 
image=a;

windowSize=get(handles.MeanFilter,'string');
windowSize=str2double(windowSize);
    % Get the size of the image
    [rows, cols,ch] = size(image);
     if(ch>1)
         image=RGBtoGray_Luminance(image);
     end   
     % Convert the image to double precision
    image = im2double(image);

    % Calculate the padding size
    padding = floor(windowSize/2);

    % Create a padded image with ones
    paddedImage = padarray(image, [padding, padding], 1);

    % Initialize the filtered image
    filteredImage = zeros(rows, cols);

    % Apply the geometric mean filter
    for i = 1:rows
        for j = 1:cols
            % Extract the window of pixels
            window = paddedImage(i:i+windowSize-1, j:j+windowSize-1);

            % Calculate the geometric mean of the window
            geometricMean = prod(window(:))^(1/(windowSize^2));

            % Assign the geometric mean value to the filtered image
            filteredImage(i, j) = geometricMean;
        end
    end
    % Display the original image
figure;imshow(filteredImage);title('Filtered Image');



% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)

%************************************** Mid-Point filter *****************************
a=getappdata(0,'a'); 
image=a;

windowSize=get(handles.MidPoint,'string');
windowSize=str2num(windowSize);

% Convert the image to double precision
image = im2double(image);                 

    % Get the size of the image
    [rows, cols] = size(image);

    % Calculate the padding size
    padding = floor(windowSize/2);

    % Create a padded image with zeros
    paddedImage = padarray(image, [padding, padding], 0);

    % Initialize the filtered image
    filteredImage = zeros(rows, cols);

    % Apply the midpoint filter
    for i = 1:rows
        for j = 1:cols
            % Extract the window of pixels
            window = paddedImage(i:i+windowSize-1, j:j+windowSize-1);

            % Calculate the midpoint value
            midpoint = (min(window(:)) + max(window(:))) / 2;

            % Assign the midpoint value to the filtered image
            filteredImage(i, j) = midpoint;
        end
    end
    % Display the original image
    figure;
    subplot(1, 2, 1);
    imshow(image);
    title('Original Image');
     %=========================   
    % Display the filtered image
    figure;
    subplot(1, 2, 2);
    imshow(filteredImage);
    title('Filtered Image');


% --- Executes on button press in pushbutton34.
function pushbutton34_Callback(hObject, eventdata, handles)
% ***************************************** Salt and Pepper Noise *********************
a=getappdata(0,'a'); 
image=a;

density=get(handles.density,'string');
density=str2double(density);

    % Convert the image to double precision
    image = im2double(image);

    % Generate salt and pepper noise with the given density
    noise = rand(size(image));
    noisyImage = image;
    
    % Apply salt and pepper noise to the image
    noisyImage(noise <= density/2) = 0; % Salt noise
    noisyImage(noise >= 1 - density/2) = 1; % Pepper noise

    % Display the original image
    figure;
    imshow(noisyImage);
    title('Noisy Image');



% --- Executes on button press in pushbutton43.
function pushbutton43_Callback(hObject, eventdata, handles)
    %************************************************* Histogram Matching********************************
    a=getappdata(0,'a');
    Input_image=a;
    b=getappdata(0,'b');
    Input_image2=b;
    [rows,cols,channels] = size(Input_image);
    freq = zeros(256);
    freq1 = zeros(256);
    for k=1:channels
        for x=1:rows
             for y=1:cols
                 freq(Input_image(x,y,k)+1) = freq(Input_image(x,y,k)+1) + 1;
                 freq1(Input_image2(x,y,k)+1) = freq1(Input_image2(x,y,k)+1) + 1;
             end
        end
    end
    for i=2:256
       freq(i) = freq(i) + freq(i-1);
       freq1(i) = freq1(i) + freq1(i-1);
    end
    MAX = freq(256);
    MAX1 = freq1(256);
    for i=1:256
        freq(i) = round(double(freq(i) / MAX) * double(256));
        freq1(i) = round(double(freq1(i) / MAX1) * double(256));
    end
    for i=1:256
        def = 256;
        for j=1:256
            if(abs(freq(i) - freq1(j)) < def)
                def = abs(freq(i) - freq1(j)); 
                index = j;
            end
        end
        freq(i) = index - 1;
    end
            for k=1:channels
                for x=1:rows
                    for y=1:cols
                        Input_image(x,y,k) = freq(Input_image(x,y,k)+1);
                    end
                end
            end
            newImage = Input_image;

            %axes(handles.axes1);
            %imshow (newImage);
            figure, imshow(newImage), title('Histogram Matching');



% --- Executes on button press in pushbutton44.
function pushbutton44_Callback(hObject, eventdata, handles)
  a=getappdata(0,'a');
  Input_image=a;
  [r,c,channels]=size(Input_image);
  if (channels==3)
      Gray_Image =zeros(r,c,'uint8');
      for i=1:r
          for j=1:c     
              Gray_Image(i,j)=0.3*Input_image(i,j,1)+0.59*Input_image(i,j,2)+0.11*Input_image(i,j,3);
          end
      end
      Input_image =Gray_Image;
  end
  img=Input_image;
  [x, y] = size(img);
  freqArray = 1 : 256;
  count = 0;  
  for i = 1 : 256
      for j = 1 : x  
           for k = 1 : y 
                 if img(j, k) == i-1
                      count = count + 1;
                 end
            end
       end
       freqArray(i) = count;
       count = 0; 
   end
   n = 0 : 255; 
   %axes(handles.axes1);
   %imshow (Out_image);
   figure
   stem(n, freqArray); 
   grid on; 
   xlabel('Index Of Pixels');   
   ylabel('Number of pixels for any level'); 
   title('Drawing the histogram');



function SizeMask_Callback(hObject, eventdata, handles)
% hObject    handle to SizeMask (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SizeMask as text
%        str2double(get(hObject,'String')) returns contents of SizeMask as a double


% --- Executes during object creation, after setting all properties.
function SizeMask_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SizeMask (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input2_Callback(hObject, eventdata, handles)
% hObject    handle to input2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input2 as text
%        str2double(get(hObject,'String')) returns contents of input2 as a double


% --- Executes during object creation, after setting all properties.
function input2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
%************************************************ Power Law **************************************
 a=getappdata(0,'a');
            Input_image=a;

            gamma=get(handles.Power,'string');
            gamma=str2num(gamma);

            Gray_Image = rgb2gray(Input_image);
            [rows, cols] = size(Gray_Image);
            Output_Image = zeros(rows, cols);
            for i = 1:rows
                for j = 1:cols
                    Old_Value = Gray_Image(i, j);
                    New_Value = double(Old_Value) ^ gamma;
                    New_Value = New_Value / (255 ^ gamma) * 255;
                    Output_Image(i, j) = New_Value;
                end
            end
            Output_Image = uint8(Output_Image);
            %Output_Image = Contrast(Output_Image,0,255);

            %axes(handles.axes1);
            %imshow (Output_Image);
   % figure, imshow(Input_image), title('Original');
    figure, imshow(Output_Image), title('Power Law');



% --- Executes on button press in pushbutton39.
function pushbutton39_Callback(hObject, eventdata, handles)
%*********************************************************** Brightness *********************************
 offest=get(handles.Power,'string');
            offest=str2num(offest);

            a=getappdata(0,'a');
            Input_image=a;

            [rows,cols,chs] = size(Input_image);   
            new_dark_image = Input_image;          
            new_light_image = Input_image;          
            for ch=1:chs  
                for row=1:rows   
                    for col=1:cols    
                        NewValueDark = Input_image(row,col,ch) - offest;
                        if NewValueDark<0     
                            new_dark_image(row,col,ch) = 0;  
                        else
                            new_dark_image(row,col,ch) = NewValueDark;
                        end
                        NewValueLight = Input_image(row,col,ch) + offest;   
                        if NewValueLight>255
                            new_light_image(row,col,ch) = 255;
                        else
                            new_light_image(row,col,ch) = NewValueLight;
                        end   
                    end
                end
            end

            %axes(handles.axes1);
            %imshow (new_light_image);

            figure,imshow(new_light_image),title('Brightness'); 


% --- Executes on button press in pushbutton40.
function pushbutton40_Callback(hObject, eventdata, handles)
% ***************************************** image Nagative *****************************************
            a=getappdata(0,'a');
            Input_image=a;

            Gray_Image = rgb2gray(Input_image);
            [rows, cols] = size(Gray_Image);
            Negative_Image = zeros(rows, cols);
            for i = 1:rows
                for j = 1:cols
                    oldValue = Gray_Image(i, j);
                    newValue = 255 - oldValue;
                    Negative_Image(i, j) = newValue;
                end
            end
            Negative_Image = uint8(Negative_Image);
           % axes(handles.axes1);
            %imshow (Negative_Image);
   % figure, imshow(Input_Image), title('Original');
    figure, imshow(Negative_Image), title('image Nagative');


% --- Executes on button press in pushbutton41.
function pushbutton41_Callback(hObject, eventdata, handles)
 a=getappdata(0,'a');
            Input_image=a;
            b=getappdata(0,'b');
            Input_image2=b;

            [rows1,cols1,chs1] = size(Input_image);    
            [rows2,cols2,chs2] = size(Input_image2);   
            
            if chs1<chs2
                chs = chs1;
            else
                chs = chs2;
            end
            
            if rows1 <= rows2 && cols1<=cols2
                rows = rows1;
                cols = cols1;
            else
                rows = rows2;
                cols = cols2;
            end
            
            New_image = zeros(rows,cols,chs);
            for ch=1:chs    
                for row=1:rows   
                    for col=1:cols  
                        Value = abs(Input_image(row,col,ch)- Input_image2(row,col,ch));
                        New_image(row,col,ch) = Value;
                    end
                end
            end
            
            New_Image = uint8(New_image);
            %axes(handles.axes1);
            %imshow (New_Image);
             figure, imshow(New_Image), title('subtract two images');



% --- Executes on button press in pushbutton42.
function pushbutton42_Callback(hObject, eventdata, handles)
%************************************************** Add two images *****************************
a=getappdata(0,'a');
            Input_image=a;
            b=getappdata(0,'b');
            Input_image2=b;

            [rows1,cols1,chs1] = size(Input_image);  
            [rows2,cols2,chs2] = size(Input_image2);
            if chs1<chs2
                chs = chs1;
            else
                chs = chs2;
            end
            if rows1 < rows2 && cols1<cols2
                rows = rows1;
                cols = cols1;
            else
                rows = rows2;
                cols = cols2;
            end
            New_image = zeros(rows,cols,chs);
            for ch=1:chs     
                for row=1:rows   
                    for col=1:cols                
                        Value = Input_image(row,col,ch)+Input_image2(row,col,ch);
                        if Value > 255
                            New_image(row,col,ch) = 255;
                        else
                            New_image(row,col,ch) = Value;
                        end
                    end 
                end
            end
            
            New_Image = uint8(New_image);
            %axes(handles.axes1);
            %imshow (New_Image);
         figure, imshow(New_Image), title('Add two images');


% --- Executes on button press in radiobutton28.
function radiobutton28_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton28


% --- Executes on button press in radiobutton27.
function radiobutton27_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton27


% --- Executes on button press in radiobutton29.
function radiobutton29_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton29


% --- Executes on button press in radiobutton30.
function radiobutton30_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton30


% --- Executes on button press in radiobutton31.
function radiobutton31_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton31


% --- Executes on button press in radiobutton32.
function radiobutton32_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton32


% --- Executes on button press in pushbutton45.
function pushbutton45_Callback(hObject, eventdata, handles)
%******************************************** Gemotric Gaussian *****************************8
a=getappdata(0,'a');
     image=a;
   
    mean=get(handles.Sigma,'string');
    mean=str2num(mean);

    stddev=get(handles.GaussianSize,'string');
    stddev=str2num(stddev);



    % Convert the image to double precision
    image = im2double(image);

    % Generate Gaussian random noise with the given mean and standard deviation
    noise = mean + stddev * randn(size(image));

    % Add the noise to the image
    noisyImage = image + noise;

    % Clip the pixel values to the range [0, 1]
    noisyImage = max(0, min(1, noisyImage));


    figure, imshow(noisyImage),title('Noisy Image');
    
% --- Executes on button press in pushbutton46.
function pushbutton46_Callback(hObject, eventdata, handles)
%*****clear****
set (handles.radiobutton1,'enable','on');
set (handles.radiobutton2,'enable','on');
set (handles.radiobutton3,'enable','on');
set (handles.radiobutton4,'enable','on');
set (handles.radiobutton5,'enable','on');
set (handles.radiobutton6,'enable','on');
msgbox('Are you sure delete all input');
pause();
clear all();
clc
cla
grid off



% --- Executes on button press in pushbutton47.
function pushbutton47_Callback(hObject, eventdata, handles)
%************************************************** Exit *********************
msgbox('thanks for using Image Processing Program')
pause(1)
close();
close();


% --- Executes on button press in pushbutton48.
function pushbutton48_Callback(hObject, eventdata, handles)
%************************************************** Load Image (1) *********************
global a;
a = uigetfile({'*.jpg','*.png'});
filename=a;
setappdata(0,'filename',filename);
a=imread(a);
axes(handles.axes1);
imshow(a);
setappdata(0,'a',a);
setappdata(0,'filename',a);
plot(handles.axes1,'a');

% hObject    handle to pushbutton48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in pushbutton49.
function pushbutton49_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%************************************************** Load Image (2) *********************
global b;
%b = uigetfile({'.jpg','.png'})

b = uigetfile({'*.jpg','*.png'})

filename=b;
setappdata(0,'filename',filename);
b=imread(b);
axes(handles.axes2);
imshow(b);
setappdata(0,'b',b)
setappdata(0,'filename',b);
plot(handles.axes2,'b')



% --- Executes during object creation, after setting all properties.
function Resize_CreateFcn(hObject, eventdata, handles)


% --- Executes on button press in radiobutton40.
function radiobutton40_Callback(hObject, eventdata, handles)
%************************************************** Resize *********************
fact_row=get(handles.width,'string');
fact_row=str2num(fact_row);
fact_column=get(handles.height,'string');
fact_column=str2num(fact_column);
a=getappdata(0,'a');
Input_image=a;

% Direct Mapping 0-order
%========================
[r, c, ch]=size(Input_image);
if get(handles.radiobutton40,'value')==1
    fact=fact_row;
    New_r = r*fact;
    New_c = c*fact;
    New_im = zeros(New_r,New_c, ch);
    for k=1:ch
        for i=1:r
            for j=1:c
                New_im(i*fact+1-fact:i*fact,j*fact+1-fact:j*fact,k)= Input_image(i,j,k);
            end
        end
    end

     New_im = uint8(New_im);
     %axes(handles.axes1);
     %imshow (New_im);
     %figure,imshow(Input_image),title('Original');
     figure,imshow(New_im),title('Resized (DM_0 order)');
end
% hObject    handle to radiobutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton40


% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)

switch(get(eventdata.NewValue,'Tag'))
    case 'radiobutton23'
        
        %fact_row=get(handles.width,'string');
        %fact_row=str2num(fact_row);
        %fact_column=get(handles.height,'string');
        %fact_column=str2num(fact_column);
        %a=getappdata(0,'a');
        %Input_image=a;
        % Direct Mapping 0-order
        %[r, c, ch]=size(Input_image);
        a=getappdata(0,'a');
        fact=fact_row;
        New_r = r*fact;
    New_c = c*fact;
    New_im = zeros(New_r,New_c, ch);
    for k=1:ch
        for i=1:r
            for j=1:c
                New_im(i*fact+1-fact:i*fact,j*fact+1-fact:j*fact,k)= Input_image(i,j,k);
            end
        end
     end
     New_im = uint8(New_im);
     %axes(handles.axes1);
     %imshow (New_im);
     %figure,imshow(Input_image),title('Original');
     setappdata(0,'filename',a_gray);
     %axes(handles.axes); 
     figure,imshow(New_im),title('Resized (DM_0 order)');
end
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton52.
function pushbutton52_Callback(hObject, eventdata, handles)
fact_row=get(handles.width,'string');
fact_row=str2num(fact_row);
fact_column=get(handles.height,'string');
fact_column=str2num(fact_column);
a=getappdata(0,'a');
Input_image=a;
% Direct Mapping 0-order
%========================
if get(handles.radiobutton23,'value')==1

    [r, c, ch]=size(Input_image);
    fact=fact_row;
    New_r = r*fact;
    New_c = c*fact;
    New_im = zeros(New_r,New_c, ch);
    for k=1:ch
        for i=1:r
            for j=1:c
                New_im(i*fact+1-fact:i*fact,j*fact+1-fact:j*fact,k)= Input_image(i,j,k);
            end
        end
     end
     New_im = uint8(New_im);
     %axes(handles.axes1);
     %imshow (New_im);
     %figure,imshow(Input_image),title('Original');
     figure,imshow(New_im),title('Resized (DM_0 order)');
    
     % Direct Mapping 1-order
     %========================
 elseif get(handles.radiobutton24,'value')==1
     fact=fact_row;
     [r, c, ch] = size(Input_image);
     New_row = round(r * fact);
     New_column = round(c * fact);
     New_image = zeros(New_row, New_column, ch, 'uint8');
     for k = 1:ch
         for i = 1:New_row
             for j = 1:New_column
                 orig_i = ((i - 1) / fact) + 1;
                 orig_j = ((j - 1) / fact) + 1;
                 i1 = max(1, floor(orig_i));
                 i2 = min(r, ceil(orig_i));
                 j1 = max(1, floor(orig_j));
                 j2 = min(c, ceil(orig_j));
                 Q11 = im(i1, j1, k);
                 Q12 = im(i1, j2, k);
                 Q21 = im(i2, j1, k);
                 Q22 = im(i2, j2, k);
                 New_image(i, j, k) = round(((Q11 - Q12) / (j2 - j1)) * (orig_j - j1) + Q11);
              end
         end
     end
     %axes(handles.axes1);
     %imshow (New_image);
     %figure, imshow(Input_image), title('Original');
     figure, imshow(New_image), title('Resized (DM_1_Order)'); % Resized Mapping 0-order
elseif get(handles.radiobutton22,'value')==1
%Resized Mapping 0_Order
%========================
    [r,c,ch]=size(Input_image);
    new_r=r*fact_row;
    new_c=c*fact_column;
    r_ratio=r/new_r;
    c_ratio=c/new_c;
    out=zeros(new_r,new_c,ch);
    for k=1:ch
        for new_x=1:new_r
            old_x=new_x*r_ratio;
            old_x=round(old_x);
            if(old_x==0)
                old_x=1;
            end
            for new_y=1:new_c
                old_y=new_y*c_ratio;
                old_y=round(old_y);
                if(old_y==0)
                    old_y=1;
                end
                out(new_x,new_y,k)=Input_image(old_x,old_y,k);
            end
        end
    end
    out=uint8(out);
    %axes(handles.axes1);
    %imshow (out);
    %figure,imshow(Input_image),title('Original');
    figure,imshow(out),title('Resized 0_Order');
    % Resized Mapping 1-order
elseif get(handles.radiobutton21,'value')==1
%Resized Mapping 1_Order
%========================
    [row, column, ch] = size(Input_image);
    new_row = row * fact_row;
    new_column = column * fact_column;
    row_ratio = row / new_row;
    column_ratio = column / new_column;
    Out_image = zeros(new_row, new_column, ch,'uint8');
    for k = 1:ch
        for new_x = 1:new_row
            old_x = new_x * row_ratio;
            old_x = round(old_x);
            if(old_x == 0)
                old_x = 1;
            end
            for new_y = 1:new_column
                old_y = new_y * column_ratio;
                old_y = round(old_y);
                if(old_y == 0)
                    old_y = 1;
                end
                Out_image(new_x, new_y, k) = Input_image(old_x, old_y, k);
            end
       end
    end
    %axes(handles.axes1);
    %imshow (Out_image);
    %figure, imshow(Input_image), title('Original');
    figure, imshow(Out_image), title('Resized 1_Order');

  end


% --- Executes on button press in pushbutton51.
function pushbutton51_Callback(hObject, eventdata, handles)
filter_size=get(handles.SizeMask,'string');
filter_size=str2num(filter_size);
a=getappdata(0,'a');
image=a;
if size(image, 3) > 1
    image = RGBtoGray_Luminance(image);
end

    [rows, cols] = size(image);

    padded_image = padarray(image, [floor(filter_size/2), floor(filter_size/2)]);

    smoothed_image = zeros(rows, cols, 'like', image);  % Initialize smoothed_image with the same data type as the input image

    for i = 1:rows
        for j = 1:cols
            neighborhood = padded_image(i:i+filter_size-1, j:j+filter_size-1);
            max_value = max(neighborhood(:));
            smoothed_image(i, j) = max_value;
        end
    end
    figure;imshow(smoothed_image);title('Smoothed Image');


% --- Executes on button press in pushbutton50.
function pushbutton50_Callback(hObject, eventdata, handles)
filter_size=get(handles.SizeMask,'string');
filter_size=str2num(filter_size);
a=getappdata(0,'a');
image=a;

    if size(image, 3) > 1
        image = RGBtoGray_Luminance(image);
    end

    [rows, cols] = size(image);

    padded_image = padarray(image, [floor(filter_size/2), floor(filter_size/2)]);
    smoothed_image = zeros(rows, cols, 'like', image);  % Initialize smoothed_image with the same data type as the input image

    for i = 1:rows
        for j = 1:cols
            neighborhood = padded_image(i:i+filter_size-1, j:j+filter_size-1);
            neighborhood_vector = reshape(neighborhood, [], 1);
            min_value = min(neighborhood_vector);
            smoothed_image(i, j) = min_value;
        end
    end
    figure;imshow(smoothed_image);title('smoothed image');


% --- Executes on button press in pushbutton53.
function pushbutton53_Callback(hObject, eventdata, handles)
a=getappdata(0,'a');
Input_Image=a;
if get(handles.radiobutton1,'value')==1
   %**********************************************************  Mean **************************************
   %action
    if size(Input_Image, 3) > 1
        Input_Image =RGBtoGray_Luminance(Input_Image);
    end
Filter_Size = 3;
[rows, cols] = size(Input_Image);
Padded_Image = padarray(Input_Image, [floor(Filter_Size/2), floor(Filter_Size/2)]);
Smoothed_Image = zeros(rows, cols);

for i = 1:rows
    for j = 1:cols
        Neighborhood = Padded_Image(i:i+Filter_Size-1, j:j+Filter_Size-1);
        sum_value = sum(Neighborhood(:));
        Mean_Value = sum_value / (Filter_Size^2);
        Smoothed_Image(i, j) = Mean_Value;
    end
end

Out_image=uint8(Smoothed_Image);
figure, imshow(Out_image), title('Smoothed Image with Mean Filter ');
elseif get(handles.radiobutton2,'value')==1
%********************************************************** Weighted ******************************
if size(Input_Image, 3) > 1
    Input_Image = RGBtoGray_Luminance(Input_Image);
end

Filter_Size = 3;
Weights = [1, 2, 1; 2, 4, 2; 1, 2, 1];
Weights = Weights / sum(Weights(:));
[rows, cols] = size(Input_Image);
Padded_Image = padarray(Input_Image, [floor(Filter_Size/2), floor(Filter_Size/2)]);
Smoothed_Image = zeros(rows, cols, 'like', Input_Image);

for i = 1:rows
    for j = 1:cols
        Neighborhood = double(Padded_Image(i:i+Filter_Size-1, j:j+Filter_Size-1));
        Weighted_Sum = sum(Neighborhood .* Weights, 'all');
        Smoothed_Image(i, j) = Weighted_Sum;
    end
end
Smoothed_Image = uint8(Smoothed_Image);
figure, imshow(Smoothed_Image), title('Smoothed Image with Weighted Filter');
elseif get(handles.radiobutton3,'value')==1
%*************************************************** Median *****************************************
 
if size(Input_Image, 3) > 1
    Input_Image = RGBtoGray_Luminance(Input_Image);
end
Filter_Size = 3;
[rows, cols] = size(Input_Image);
Padded_Image = padarray(Input_Image, [floor(Filter_Size/2), floor(Filter_Size/2)]);
Smoothed_Image = zeros(rows, cols);

for i = 1:rows
    for j = 1:cols
       
        Neighborhood = Padded_Image(i:i+Filter_Size-1, j:j+Filter_Size-1);
        Neighborhood_Vector = reshape(Neighborhood, [], 1);      
        Median_Value = median(Neighborhood_Vector);
        Smoothed_Image(i, j) = Median_Value;
    end
end

Out_image=uint8(Smoothed_Image);
figure, imshow(Out_image), title('Smoothed Image with Median Filter ');
elseif get(handles.radiobutton4,'value')==1
%****************************************************** Unsharped Image*****************************8888
    a=getappdata(0,'a'); 
    image=a;
    filter_size = 4;
    [rows, cols,~] = size(image);

    padded_image = padarray(image, [floor(filter_size/2), floor(filter_size/2)]);

    smoothed_image = zeros(rows, cols,3, 'like', image);
    for k=1:3
        for i = 1:rows
            for j = 1:cols
                neighborhood = padded_image(i:i+filter_size-1, j:j+filter_size-1);
                mean_value = mean(neighborhood(:));
                smoothed_image(i, j,k) = mean_value;
            end
        end
    end
    Edge_image = image - smoothed_image;
    New_image = Edge_image + image;
    figure;imshow(New_image);title('Unsharped Image');
elseif get(handles.radiobutton5,'value')==1
%********************************************************** Edge Image (Second Derivative) *********************
    a=getappdata(0,'a'); 
    image=a;
    if size(image, 3) > 1
        image=RGBtoGray_Luminance(image);
    end

    [rows, cols] = size(image);
    edgeImage = zeros(rows, cols);
    for i = 2:rows-1
        for j = 1:cols
            edgeImage(i, j) = image(i+1,j)+image(i-1,j)-2*image(i,j); 
            if(i==rows-1)
                edgeImage(i+1, j) =0;
            end   
            if(i==2)
                edgeImage(i-1, j) =0;
            end 
        end
    end
    edgeImage = edgeImage / max(abs(edgeImage(:)));
    figure;
    imshow(edgeImage);
    title('Edge Image (Second Derivative)');
elseif get(handles.radiobutton6,'value')==1
%************************************************ Sharpened Image***********************************
a=getappdata(0,'a'); 
image=a;

weights = [-1, -1, -1; -1, 9, -1; -1, -1, -1];
    [rows, cols, ~] = size(image);
    padded_image = padarray(image, [1, 1], 'replicate');
    sharpenedImage = zeros(rows, cols, 3, 'like', image); % Initialize RGB image
    for k=1:3
        for i = 1:rows
            for j = 1:cols
                neighborhood = double(padded_image(i:i+2, j:j+2, k));
                weighted_sum = sum(neighborhood(:) .* weights(:));
                if weighted_sum > 255
                    weighted_sum = 255;
                elseif weighted_sum < 0
                    weighted_sum = 0;
                end
                sharpenedImage(i, j, k) = weighted_sum;
            end
        end
    end
    
    sharpenedImage = uint8(sharpenedImage);
    figure;
    imshow(sharpenedImage);
    title('Sharpened Image'); 

end                                         


% --- Executes on button press in radiobutton41.
function radiobutton41_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton41


% --- Executes on button press in radiobutton42.
function radiobutton42_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton42


% --- Executes on button press in radiobutton43.
function radiobutton43_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton43


% --- Executes on button press in radiobutton44.
function radiobutton44_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton44


% --- Executes on button press in pushbutton54.
function pushbutton54_Callback(hObject, eventdata, handles)
a=getappdata(0,'a');
Input_image=a;
fact_row=get(handles.width,'string');
fact_row=str2num(fact_row);
fact_column=get(handles.height,'string');
fact_column=str2num(fact_column);
if get(handles.radiobutton41,'value')==1
 %********DM_0 Order******
       if(fact_column ~= fact_row)
           warndlg('Please enter an equal height and width')
       else 
                     [r, c, ch]=size(Input_image);
                    fact=fact_row;
                    New_r = r*fact;
                    New_c = c*fact;
                    New_im = zeros(New_r,New_c, ch); 
                    for k=1:ch
                        for i=1:r
                            for j=1:c
                                New_im(i*fact+1-fact:i*fact,j*fact+1-fact:j*fact,k)= Input_image(i,j,k);

                            end
                        end
                    end
                    
                    New_im = uint8(New_im);
                    figure,imshow(New_im),title('Resized (DM_0 order)');
       end      
elseif get(handles.radiobutton42,'value')==1
%********DM_1 Order******
 if(fact_column ~= fact_row)
           warndlg('Please enter an equal height and width')
 else 
   Original_image=Input_image;
factor=fact_row;
[rows,cols,channels]=size(Original_image);
Resized_image=zeros(rows*factor,cols*factor,channels);
% move over 3 channels
for k=1:channels
    x = 1;
    for i=1:rows
        y = 1;
        for j=1:cols
            Resized_image(x , y , k) = Original_image(i , j , k);
            y = y + factor;
        end
        x = x + factor;
    end
end
for k=1:channels
    for i=1:rows
        x = 1 + (i-1)*factor;
        for j=1:cols
            c = 1;
            if(j + 1 > cols)
                max = Original_image(i,j,k);
                min = Original_image(i,j,k);
                y = 1 + (j-1) * factor;
                d = 1;
            elseif(Original_image(i,j,k) > Original_image(i,j+1,k))
                max = Original_image(i,j,k);
                min = Original_image(i,j+1,k);
                y = 1 + j * factor;
                d = -1;
            else
                max = Original_image(i,j+1,k);
                min = Original_image(i,j,k);
                d = 1;
                y = 1 + (j-1) * factor;
            end 
            while( c <= factor - 1)
                Resized_image(x,y+d,k) = round((max-min)/factor * c + min);
                y = y + d;
                c = c + 1;
            end
        end
    end
end
for k=1:channels
    for i=1:cols * factor
        for j=1:rows
            curRow = 1 + (j-1)*factor;
            nextRow = 1 + j*factor;
            c = 1;
            if(j + 1 > rows)
                max = Resized_image(curRow,i,k);
                min = Resized_image(curRow,i,k);
                y = curRow;
                d = 1;
            elseif(Resized_image(curRow,i,k) > Resized_image(nextRow,i,k))
                max = Resized_image(curRow,i,k);
                min = Resized_image(nextRow,i,k);
                y = nextRow;
                d = -1;
            else
                max = Resized_image(nextRow,i,k);
                min = Resized_image(curRow,i,k);
                d = 1;
                y = curRow;
            end
            while(c <= factor - 1)
                y = y + d;
                Resized_image(y,i,k) = round((max-min)/factor * c + min);
                c = c + 1;
            end
        end
    end
end
Resized_image=uint8(Resized_image);
figure;
imshow(Resized_image);
 end
 elseif get(handles.radiobutton43,'value')==1
%********RM_0 Order******
                [r,c,ch]=size(Input_image);
                new_r=r*fact_row;
                new_c=c*fact_column;
                r_ratio=r/new_r;
                c_ratio=c/new_c;
                out=zeros(new_r,new_c,ch);
                for k=1:ch
                    for new_x=1:new_r
                        old_x=new_x*r_ratio;
                        old_x=round(old_x);
                        if(old_x==0)
                            old_x=1;
                        end
                        for new_y=1:new_c
                            old_y=new_y*c_ratio;
                            old_y=round(old_y);
                            if(old_y==0)
                                old_y=1;
                            end
                            out(new_x,new_y,k)=Input_image(old_x,old_y,k);
                        end
                    end
                end
                
                out=uint8(out);
                
                figure,imshow(out),title('Resized 0_Order');

elseif get(handles.radiobutton44,'value')==1
           %********RM_1 Order******
          Original_image=Input_image;
          factor1=fact_row;
          factor2=fact_column;
          %new_row = row * fact_row;
          %new_column = column * fact_column;
                            [rows,cols,channels] = size(Original_image);
Resized_image = zeros(rows*factor1,cols*factor2,channels);
% move over 3 channels
rowRatio = 1/factor1;
colRatio = 1/factor2;

for k=1:channels
    for x=1:rows*factor1
        for y=1:cols*factor2
            oldX = round(x * rowRatio);
            oldY = round(y * colRatio);
            if(oldX < 1)
                oldX = 1;
            end
            if(oldY < 1)
                oldY = 1;
            end
            x1 = floor(oldX);
            y1 = floor(oldY);
            if(x1 < 1)
                x1 = 1;
            end
            if(y1 < 1)
                y1 = 1;
            end
            x2 = x1 +1;
            y2 = y1 +1;
            if(x2 > rows)
                x2 = rows;
            end
            if(y2 > cols)
                y2 = cols;
            end
            p1 = Original_image(x1,y1,k);
            p2 = Original_image(x2,y1,k);
            p3 = Original_image(x1,y2,k);
            p4 = Original_image(x2,y2,k);
            xf = oldX - x1;
            yf = oldY - y1;
            z1 = p1 * (1-xf) + p2 * xf;
            z2 = p3 * (1-xf) + p4 * xf;
            new = z1 * (1-yf) + z2*yf;
            Resized_image(x,y,k) = floor(new);
        end
    end
end
%Casting image type for show
Resized_image=uint8(Resized_image);
figure,imshow(Resized_image),title('Resized Image');
end





function MeanFilter_Callback(hObject, eventdata, handles)
% hObject    handle to MeanFilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MeanFilter as text
%        str2double(get(hObject,'String')) returns contents of MeanFilter as a double


% --- Executes during object creation, after setting all properties.
function MeanFilter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MeanFilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function density_Callback(hObject, eventdata, handles)
% hObject    handle to density (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of density as text
%        str2double(get(hObject,'String')) returns contents of density as a double


% --- Executes during object creation, after setting all properties.
function density_CreateFcn(hObject, eventdata, handles)
% hObject    handle to density (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton59.
function pushbutton59_Callback(hObject, eventdata, handles)

a=getappdata(0,'a'); 
image=a;

windowSize=get(handles.MidPoint,'string');
windowSize=str2double(windowSize);

% Convert the image to double precision
image = im2double(image);                 
image=RGBtoGray_Luminance(image);
    % Get the size of the image
    [rows, cols] = size(image);

    % Calculate the padding size
    padding = floor(windowSize/2);

    % Create a padded image with zeros
    paddedImage = padarray(image, [padding, padding], 0);

    % Initialize the filtered image
    filteredImage = zeros(rows, cols);

    % Apply the midpoint filter
    for i = 1:rows
        for j = 1:cols
            % Extract the window of pixels
            window = paddedImage(i:i+windowSize-1, j:j+windowSize-1);

            % Calculate the midpoint value
            midpoint = (min(window(:)) + max(window(:))) / 2;

            % Assign the midpoint value to the filtered image
            filteredImage(i, j) = midpoint;
        end
    end
    % Display the original image
    figure;
    imshow(filteredImage);
    title('Filtered Image');



% --- Executes on button press in pushbutton60.
function pushbutton60_Callback(hObject, eventdata, handles)
a=getappdata(0,'a'); 
oldimage=a;

K=get(handles.input2,'string');
K=str2double(K);

[row,column,pages]=size(oldimage);
newimage=zeros(row,column,pages,'uint8');
grayLevel=2^K;
gap=256/grayLevel;
colors=gap:gap:256;
for k=1:pages
for i=1:row
      for j=1:column
          
       temp=oldimage(i,j,k)/gap;
       index=floor(temp);
       
       if index<1
          index=1;
       end
       
       newimage(i,j,k)=colors(index);
      end
end 
end
figure;imshow(newimage),title('New Image');



function MidPoint_Callback(hObject, eventdata, handles)
% hObject    handle to MidPoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MidPoint as text
%        str2double(get(hObject,'String')) returns contents of MidPoint as a double


% --- Executes during object creation, after setting all properties.
function MidPoint_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MidPoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit27_Callback(hObject, eventdata, handles)
% hObject    handle to input2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input2 as text
%        str2double(get(hObject,'String')) returns contents of input2 as a double


% --- Executes during object creation, after setting all properties.
function edit27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Power_Callback(hObject, eventdata, handles)
% hObject    handle to Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Power as text
%        str2double(get(hObject,'String')) returns contents of Power as a double


% --- Executes during object creation, after setting all properties.
function Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
