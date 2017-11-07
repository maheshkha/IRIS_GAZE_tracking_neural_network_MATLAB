function varargout = sat_sp_1(varargin)
% SAT_SP_1 Application M-file for sat_sp_1.fig
%    FIG = SAT_SP_1 launch sat_sp_1 GUI.
%    SAT_SP_1('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.5 19-Mar-2008 20:52:01

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);

	if nargout > 0
		varargout{1} = fig;
	end

elseif ischar(varargin{1}) % INVOKE NAMED SUBFUNCTION OR CALLBACK

	try
		if (nargout)
			[varargout{1:nargout}] = feval(varargin{:}); % FEVAL switchyard
		else
			feval(varargin{:}); % FEVAL switchyard
		end
	catch
		disp(lasterr);
	end

end


%| ABOUT CALLBACKS:
%| GUIDE automatically appends subfunction prototypes to this file, and 
%| sets objects' callback properties to call them through the FEVAL 
%| switchyard above. This comment describes that mechanism.
%|
%| Each callback subfunction declaration has the following form:
%| <SUBFUNCTION_NAME>(H, EVENTDATA, HANDLES, VARARGIN)
%|
%| The subfunction name is composed using the object's Tag and the 
%| callback type separated by '_', e.g. 'slider2_Callback',
%| 'figure1_CloseRequestFcn', 'axis1_ButtondownFcn'.
%|
%| H is the callback object's handle (obtained using GCBO).
%|
%| EVENTDATA is empty, but reserved for future use.
%|
%| HANDLES is a structure containing handles of components in GUI using
%| tags as fieldnames, e.g. handles.figure1, handles.slider2. This
%| structure is created at GUI startup using GUIHANDLES and stored in
%| the figure's application data using GUIDATA. A copy of the structure
%| is passed to each callback.  You can store additional information in
%| this structure at GUI startup, and you can change the structure
%| during callbacks.  Call guidata(h, handles) after changing your
%| copy to replace the stored original so that subsequent callbacks see
%| the updates. Type "help guihandles" and "help guidata" for more
%| information.
%|
%| VARARGIN contains any extra arguments you have passed to the
%| callback. Specify the extra arguments by editing the callback
%| property in the inspector. By default, GUIDE sets the property to:
%| <MFILENAME>('<SUBFUNCTION_NAME>', gcbo, [], guidata(gcbo))
%| Add any extra arguments after the last argument, before the final
%| closing parenthesis.


% --------------------------------------------------------------------
function varargout = pushbutton1_Callback(h, eventdata, handles, varargin)
global in_img1;
% [fn,pn] = uigetfile('*.jpg','The file name should have jpg extension.');
% in_img1 = imread([pn,fn]); % read the image
in_img1 = imread('1.jpg'); % read the image
% display the results
handles.in_img1 = in_img1;
axes(handles.axes2);
subimage(in_img1);
title('1 image');
axis off
% --------------------------------------------------------------------
% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global in_img2;
% [fn,pn] = uigetfile('*.jpg','The file name should have jpg extension.');
% in_img2 = imread([pn,fn]); % read the image
in_img2 = imread('2.jpg'); % read the image

% display the results
handles.in_img2 = in_img2;
axes(handles.axes5);
subimage(in_img2);
title('2 image');
% --------------------------------------------------------------------
% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global in_img3;
[fn,pn] = uigetfile('*.jpg','The file name should have jpg extension.');
in_img3 = imread([pn,fn]); % read the image
% in_img3 = imread('3.jpg'); % read the image

% display the results
handles.in_img3 = in_img3;
axes(handles.axes10);
subimage(in_img3);
title('3 image');

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global in_img4;
% [fn,pn] = uigetfile('*.jpg','The file name should have jpg extension.');
% in_img4 = imread([pn,fn]); % read the image
in_img4 = imread('4.jpg'); % read the image
handles.in_img4 = in_img4;
axes(handles.axes6);
subimage(in_img4);
title('4 image');
guidata(hObject, handles);


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global in_img5;
% [fn,pn] = uigetfile('*.jpg','The file name should have jpg extension.');
% in_img5 = imread([pn,fn]); % read the image
in_img5 = imread('5.jpg'); % read the image
% display the results
handles.in_img5 = in_img5;
axes(handles.axes7);
subimage(in_img5);
title('5 image');

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global in_img6;
% [fn,pn] = uigetfile('*.jpg','The file name should have jpg extension.');
% in_img6 = imread([pn,fn]); % read the image
in_img6 = imread('6.jpg'); % read the image

% display the results
handles.in_img6 = in_img6;
axes(handles.axes9);
subimage(in_img6);
title('6 image ');

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% display the results
page1;

