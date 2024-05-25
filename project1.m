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

% Last Modified by GUIDE v2.5 12-May-2024 23:25:01

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
 Histogram_Equalization( Input_image);

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
            Contrast(Input_image,New_Max,New_Min);


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
        Single_color_channel(img);
    case 'Averaging'
        %Averaging:-
        %---------------
        a=getappdata(0,'a');
        img=a;
        Averaging(img);
    case 'Luminance'
        %Luminance:-
        %--------------
        a=getappdata(0,'a');
        rgb=a;
        Gray_Image=RGBtoGray_Luminance(rgb);
        figure,imshow(Gray_Image),title('Gray (Luminance) ')
    case 'Desaturation'
        %Desaturation:-
        %-----------------
        a=getappdata(0,'a');
        img=a;
        Desaturation(img);
    case 'Decomposing'
        %Decomposing:-
        %---------------
        a=getappdata(0,'a');
        img=a;
        Decomposing(img);

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
windowSize=get(handles.windowSize,'string');
windowSize=str2double(windowSize);
   geometric_mean_filter(image,windowSize);


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
salt_pepper(image,density);


% --- Executes on button press in pushbutton43.
function pushbutton43_Callback(hObject, eventdata, handles)
    %************************************************* Histogram Matching********************************
    a=getappdata(0,'a');
    Input_image=a;
    b=getappdata(0,'b');
    Input_image2=b;
     Histogram_Matching( Input_image,Input_image2);


% --- Executes on button press in pushbutton44.
function pushbutton44_Callback(hObject, eventdata, handles)
  a=getappdata(0,'a');
  Input_image=a;
 Drawing_histogram( Input_image);


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
%************************************************ Input Law **************************************
            a=getappdata(0,'a');
            Input_image=a;

            gamma=get(handles.Input,'string');
            gamma=str2double(gamma);
            PowerLaw(Input_image,gamma);

% --- Executes on button press in pushbutton39.
function pushbutton39_Callback(hObject, eventdata, handles)
%*********************************************************** Brightness *********************************
 offest=get(handles.Input,'string');
            offest=str2num(offest);

            a=getappdata(0,'a');
            Input_image=a;
            Brightness(Input_image,offest);
            

% --- Executes on button press in pushbutton40.
function pushbutton40_Callback(hObject, eventdata, handles)
% ***************************************** image Nagative *****************************************
            a=getappdata(0,'a');
            Input_image=a;
            ImageNagative(Input_image);


% --- Executes on button press in pushbutton41.
function pushbutton41_Callback(hObject, eventdata, handles)
 a=getappdata(0,'a');
            Input_image=a;
            b=getappdata(0,'b');
            Input_image2=b;
            SubtractTwoImages(Input_image,Input_image2);
           


% --- Executes on button press in pushbutton42.
function pushbutton42_Callback(hObject, eventdata, handles)
%************************************************** Add two images *****************************
a=getappdata(0,'a');
            Input_image=a;
            b=getappdata(0,'b');
            Input_image2=b;
            AddTwoImages(Input_image,Input_image2);

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
    AddingRandomNoiseGaussian(image,mean,stddev);
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

% --- Executes on button press in pushbutton50.


% --- Executes on button press in pushbutton53.
function pushbutton53_Callback(hObject, eventdata, handles)
a=getappdata(0,'a');
Input_Image=a;
image=a;
Filter_Size=get(handles.Size,'string');
Filter_Size=str2num(Filter_Size);
filter_size=Filter_Size;
if  mod(Filter_Size, 2) == 0
     warndlg('Please enter an Odd filter size !')
elseif get(handles.radiobutton53,'value')==1
 Max_filter( image,filter_size);
elseif get(handles.radiobutton54,'value')==1
   Min_filter( image,filter_size);
elseif get(handles.radiobutton1,'value')==1
   %**********************************************************  Mean **************************************
   %action
   Mean_Filter(Input_Image,Filter_Size);
elseif get(handles.radiobutton3,'value')==1
%*************************************************** Median *****************************************
Median_Filter(Input_Image,Filter_Size);
elseif get(handles.radiobutton4,'value')==1
%****************************************************** Unsharped Image*****************************
    UnSharpen(image,filter_size);

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
       DM_0_Order(Input_image,fact_row,fact_column);
elseif get(handles.radiobutton42,'value')==1
%********DM_1 Order******
 DM_1_Order(Input_image,fact_row,fact_column);
elseif get(handles.radiobutton43,'value')==1
%********RM_0 Order******
RM_0_Order(Input_image,fact_row,fact_column);
elseif get(handles.radiobutton44,'value')==1
           %********RM_1 Order******
         RM_1_Order(Input_image,fact_row,fact_column)
end


function windowSize_Callback(hObject, eventdata, handles)
% hObject    handle to windowSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of windowSize as text
%        str2double(get(hObject,'String')) returns contents of windowSize as a double


% --- Executes during object creation, after setting all properties.
function windowSize_CreateFcn(hObject, eventdata, handles)
% hObject    handle to windowSize (see GCBO)
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
%                           Mid Point Filter
a=getappdata(0,'a'); 
image=a;

windowSize=get(handles.windowSize,'string');
windowSize=str2double(windowSize);
mid_point_filter(image,windowSize);

% --- Executes on button press in pushbutton60.
function pushbutton60_Callback(hObject, eventdata, handles)
a=getappdata(0,'a'); 
oldimage=a;

K=get(handles.Input,'string');
K=str2double(K);

quantization( oldimage,K );


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



function Input_Callback(hObject, eventdata, handles)
% hObject    handle to Input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Input as text
%        str2double(get(hObject,'String')) returns contents of Input as a double


% --- Executes during object creation, after setting all properties.
function Input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Size_Callback(hObject, eventdata, handles)
% hObject    handle to Size (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Size as text
%        str2double(get(hObject,'String')) returns contents of Size as a double


% --- Executes during object creation, after setting all properties.
function Size_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Size (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton57.
function radiobutton57_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton57


% --- Executes on button press in pushbutton61.
function pushbutton61_Callback(hObject, eventdata, handles)
a=getappdata(0,'a');
Input_Image=a;
if get(handles.radiobutton2,'value')==1
%********************************************************** Weighted ******************************
prompt={'Enter Sigma'};
dlg_title='input';
num_lines=1;
def={'',''};
answer=inputdlg(prompt,dlg_title,num_lines,def);
sigma=str2num(answer{1});
Weighted_filter(Input_Image,sigma);
elseif get(handles.radiobutton6,'value')==1
%************************************************ Sharpened Image***********************************
a=getappdata(0,'a'); 
image=a;
Sharpening(image);
elseif get(handles.radiobutton5,'value')==1
%********************************************************** Edge Image (Second Derivative) *********************
    a=getappdata(0,'a'); 
    image=a;
    Edge_detection(image);
end
% --- Executes on button press in radiobutton53.
function radiobutton53_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton53


% --- Executes on button press in radiobutton54.
function radiobutton54_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton54
