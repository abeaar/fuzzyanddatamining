function varargout = data_minning(varargin)
% DATA_MINNING MATLAB code for data_minning.fig
%      DATA_MINNING, by itself, creates a new DATA_MINNING or raises the existing
%      singleton*.
%
%      H = DATA_MINNING returns the handle to a new DATA_MINNING or the handle to
%      the existing singleton*.
%
%      DATA_MINNING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DATA_MINNING.M with the given input arguments.
%
%      DATA_MINNING('Property','Value',...) creates a new DATA_MINNING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before data_minning_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to data_minning_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help data_minning

% Last Modified by GUIDE v2.5 21-Mar-2024 20:07:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @data_minning_OpeningFcn, ...
                   'gui_OutputFcn',  @data_minning_OutputFcn, ...
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


% --- Executes just before data_minning is made visible.
function data_minning_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to data_minning (see VARARGIN)

% Choose default command line output for data_minning
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes data_minning wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = data_minning_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in showDataButton.
function showDataButton_Callback(hObject, eventdata, handles)
% hObject    handle to showDataButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opts = detectImportOptions('milk.csv');
opts.SelectedVariableNames=(1:8);
allData = table2cell(readtable('milk.csv', opts));
set(handles.dataTable, 'data', allData);



function pH_Callback(hObject, eventdata, handles)
% hObject    handle to pH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pH as text
%        str2double(get(hObject,'String')) returns contents of pH as a double


% --- Executes during object creation, after setting all properties.
function pH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Temprature_Callback(hObject, eventdata, handles)
% hObject    handle to Temprature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Temprature as text
%        str2double(get(hObject,'String')) returns contents of Temprature as a double


% --- Executes during object creation, after setting all properties.
function Temprature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Temprature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Taste_Callback(hObject, eventdata, handles)
% hObject    handle to Taste (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Taste as text
%        str2double(get(hObject,'String')) returns contents of Taste as a double


% --- Executes during object creation, after setting all properties.
function Taste_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Taste (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Odor_Callback(hObject, eventdata, handles)
% hObject    handle to Odor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Odor as text
%        str2double(get(hObject,'String')) returns contents of Odor as a double


% --- Executes during object creation, after setting all properties.
function Odor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Odor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kValue_Callback(hObject, eventdata, handles)
% hObject    handle to kValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kValue as text
%        str2double(get(hObject,'String')) returns contents of kValue as a double


% --- Executes during object creation, after setting all properties.
function kValue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in classifyButton.
function classifyButton_Callback(hObject, eventdata, handles)
% hObject    handle to classifyButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ipH = str2double(get(handles.pH, 'String'));
itemp = str2double(get(handles.Temprature, 'String'));
itast = str2double(get(handles.Taste, 'String'));
iodor = str2double(get(handles.Odor, 'String'));
ifat = str2double(get(handles.Fat, 'String'));
iturb = str2double(get(handles.Turbidity, 'String'));
icol = str2double(get(handles.Colour, 'String'));

kValue = str2double(get(handles.kValue, 'String'));

sample = [ipH itemp itast iodor ifat iturb icol];

opts = detectImportOptions('milk.csv');
opts.SelectedVariableNames=(1:7);
training = readmatrix('milk.csv', opts);

opts.SelectedVariableNames=(8);
group = readmatrix('milk.csv', opts);

class = fitcknn(training, group, 'NumNeighbors', kValue);
result = predict(class, sample);

set(handles.classify, 'String', result);


function classify_Callback(hObject, eventdata, handles)
% hObject    handle to classify (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of classify as text
%        str2double(get(hObject,'String')) returns contents of classify as a double


% --- Executes during object creation, after setting all properties.
function classify_CreateFcn(hObject, eventdata, handles)
% hObject    handle to classify (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Fat_Callback(hObject, eventdata, handles)
% hObject    handle to Fat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Fat as text
%        str2double(get(hObject,'String')) returns contents of Fat as a double


% --- Executes during object creation, after setting all properties.
function Fat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Fat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Turbidity_Callback(hObject, eventdata, handles)
% hObject    handle to Turbidity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Turbidity as text
%        str2double(get(hObject,'String')) returns contents of Turbidity as a double


% --- Executes during object creation, after setting all properties.
function Turbidity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Turbidity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Colour_Callback(hObject, eventdata, handles)
% hObject    handle to Colour (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Colour as text
%        str2double(get(hObject,'String')) returns contents of Colour as a double


% --- Executes during object creation, after setting all properties.
function Colour_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Colour (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
