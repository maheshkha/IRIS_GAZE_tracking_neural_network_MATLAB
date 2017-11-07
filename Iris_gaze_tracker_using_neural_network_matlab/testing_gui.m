function varargout = testing_gui(varargin)
% TESTING_GUI M-file for testing_gui.fig
%      TESTING_GUI, by itself, creates a new TESTING_GUI or raises the existing
%      singleton*.
%
%      H = TESTING_GUI returns the handle to a new TESTING_GUI or the handle to
%      the existing singleton*.
%
%      TESTING_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TESTING_GUI.M with the given input arguments.
%
%      TESTING_GUI('Property','Value',...) creates a new TESTING_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before testing_gui_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to testing_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help testing_gui

% Last Modified by GUIDE v2.5 31-Jan-2009 18:56:25

% Begin initialization code - DO NOT EDIT

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @testing_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @testing_gui_OutputFcn, ...
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


% --- Executes just before testing_gui is made visible.
function testing_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to testing_gui (see VARARGIN)

% Choose default command line output for testing_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes testing_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = testing_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% % --- Executes on button press in pushbutton1.
% function pushbutton1_Callback(hObject, eventdata, handles)
% % hObject    handle to pushbutton1 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% page1;

% M_im1 = aviread('im1.avi');
% x=rgb2gray(M_im1(1).cdata);
% axes(handles.axes2);
% subimage(x);
% title('Original Image');


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

page1;
% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global cha1;
global Input;
global fn;
global pn;

[fn,pn] = uigetfile('*.jpg','The file name should have bmp extension.');
Input 	=  imread([pn,fn]);
axes(handles.axes2);
subimage(Input);
title('Unknown Image');




function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global cha1;
global Input;
global fn;
global pn;

img=[pn,fn];

%feature extraction 
for i=1:1
  testdat(i,:)=blah_new(img);
end

%feature vector create
for i=1:1
 if i==1
    P=testdat(i,:);
 else
    P=[P,testdat(i,:)];
 end
  if i==1
    [m,n]=size(testdat(i,:));
    for j=1:n
        T1(j)=1;
    end
  end
  if i==2
    [m,n]=size(testdat(i,:));
    for j=1:n
        T2(j)=2;
    end
  end
  if i==3
    [m,n]=size(testdat(i,:));
    for j=1:n
        T3(j)=3;
    end
  end
  if i==4
    [m,n]=size(testdat(i,:));
    for j=1:n
        T4(j)=4;
    end
  end
 end
T=[T1];%,T2];%,T3,T4

 load network_50epochs;

Y = sim(net,P);


for i=1:1:size(Y),
if ((Y(i)>1.3) & (Y(i)<2.4))
% disp('class 2')
idx3(i)=2;
elseif (Y(i)<1.3) 
%     disp('class 1')
idx3(i)=1;
elseif ((Y(i)>2.4) & (Y(i)<3.4))
% disp('class 3')
idx3(i)=3;
elseif (Y(i)>3.4)
% disp('class 3')
idx3(i)=4;
end
end
error2=T - idx3;
sum(error2);

for i=22:22:length(P)
if (P(i)>8 )
    cha1='Matched';
    set(handles.edit1,'String',cha1);
else
    cha1='Not Matched';
    set(handles.edit1,'String',cha1);   

end

end
