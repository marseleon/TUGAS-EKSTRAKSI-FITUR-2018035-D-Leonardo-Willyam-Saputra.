function varargout = ekstraksi(varargin)
% EKSTRAKSI MATLAB code for ekstraksi.fig
%      EKSTRAKSI, by itself, creates a new EKSTRAKSI or raises the existing
%      singleton*.
%
%      H = EKSTRAKSI returns the handle to a new EKSTRAKSI or the handle to
%      the existing singleton*.
%
%      EKSTRAKSI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EKSTRAKSI.M with the given input arguments.
%
%      EKSTRAKSI('Property','Value',...) creates a new EKSTRAKSI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ekstraksi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ekstraksi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ekstraksi

% Last Modified by GUIDE v2.5 28-May-2022 15:30:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ekstraksi_OpeningFcn, ...
                   'gui_OutputFcn',  @ekstraksi_OutputFcn, ...
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


% --- Executes just before ekstraksi is made visible.
function ekstraksi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ekstraksi (see VARARGIN)

% Choose default command line output for ekstraksi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ekstraksi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ekstraksi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
open=guidata(gcbo);
[namafile]=uigetfile({'*.jpg;*.bmp;*.tif'},'openimage');
I=imread(namafile);
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));colormap('gray');
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
open=guidata(gcbo);
A = double(get(open.axes1,'Userdata'));
B = rgb2gray(A);
level = graythresh(B);
C = im2bw (B,level);
ans= 5.6301e+05
bwarea (C)

set(open.figure1,'CurrentAxes',open.axes2);
set(imagesc(C));colormap('gray');
set(open.axes2,'Userdata',C);
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
open=guidata(gcbo)
A = double(get(open.axes1,'Userdata'));
B = rgb2gray(A);
level = graythresh(B);
C = im2bw (B,level);
D = bwperim (C);
perimeter = sum (sqrt (sum(D,3)))

perimeter = 160.5321

set(open.figure1,'CurrentAxes',open.axes3);
set(imagesc(D));colormap('gray');
set(open.axes3,'Userdata',D);
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
