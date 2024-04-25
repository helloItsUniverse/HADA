global h

try
    switch computer
        case 'PCWIN'
            h = actxserver('xsensdeviceapi_com32.IXsensDeviceApi');
        case 'PCWIN64'
            h = actxserver('xsensdeviceapi_com64.IXsensDeviceApi');
        otherwise
            error('XDA:os','Unsupported OS');
    end
catch e
    fprintf('\nPlease reinstall MT SDK or check manual,\n Xsens Device Api is not found.')
    rethrow(e);
end
fprintf('\nActiveXsens server - activated \n');

version = h.xdaVersion;
fprintf('Using XDA version: %.0f.%.0f.%.0f\n',version{1:3})
if length(version)>3
    fprintf('XDA build: %.0f%s\n',version{4:5})
end

% Scan for devices
fprintf('Scanning for devices... \n')
ports = h.XsScanner_scanPorts(0,100,true,true);

% Find an MTi device
numPorts = size(ports,1);
for port = 1:numPorts
    if (h.XsDeviceId_isMti(ports{port,1}) || h.XsDeviceId_isMtig(ports{port,1}))
        mtPort = ports(port,:);
        break
    end
end

if isempty(mtPort)
    fprintf('No MTi device found. Aborting. \n');
    return
end

deviceId = mtPort{1};
portName = mtPort{3};
baudrate = mtPort{4};

fprintf('Found a device with: \n');
fprintf(' Device ID: %s \n', h.XsDeviceId_toDeviceTypeString(deviceId, false));
fprintf(' Baudrate: %d \n', baudrate);
fprintf(' Port name: %s \n', portName);

% Open port
fprintf('Opening port... \n')
if ~h.XsControl_openPort(portName, baudrate, 0, true)
    fprintf('Could not open port. Aborting. \n');
    return
end

% Get the device object
device = h.XsControl_device(deviceId);
fprintf('Device: %s, with ID: %s opened. \n', h.XsDevice_productCode(device), h.XsDeviceId_toString(h.XsDevice_deviceId(device)));

% Register eventhandler
h.registerevent({'onLiveDataAvailable',@eventhandlerXsens});
h.setCallbackOption(h.XsComCallbackOptions_XSC_LivePacket, h.XsComCallbackOptions_XSC_None);
% show events using h.events and h.eventlisteners too see which are registerd;

% Put device into configuration mode
fprintf('Putting device into configuration mode... \n')
if ~h.XsDevice_gotoConfig(device)
    fprintf('Could not put device into configuration mode. Aborting. \n');
    return
end

% Configure the device
fprintf('Configuring the device... \n')
if (h.XsDeviceId_isImu(deviceId))
    outputConfig = {h.XsDataIdentifier_XDI_PacketCounter,0;
        h.XsDataIdentifier_XDI_SampleTimeFine,0;
        h.XsDataIdentifier_XDI_Acceleration,100;
        h.XsDataIdentifier_XDI_RateOfTurn,100;
        h.XsDataIdentifier_XDI_MagneticField,100};
elseif (h.XsDeviceId_isVru(deviceId) || h.XsDeviceId_isAhrs(deviceId))
    outputConfig = {h.XsDataIdentifier_XDI_PacketCounter,0;
        h.XsDataIdentifier_XDI_SampleTimeFine,0;
        h.XsDataIdentifier_XDI_Quaternion,100};
elseif (h.XsDeviceId_isGnss(deviceId))
    outputConfig = {h.XsDataIdentifier_XDI_PacketCounter,0;
        h.XsDataIdentifier_XDI_SampleTimeFine,0;
        h.XsDataIdentifier_XDI_Quaternion,100;
        h.XsDataIdentifier_XDI_LatLon,100;
        h.XsDataIdentifier_XDI_AltitudeEllipsoid,100;
        h.XsDataIdentifier_XDI_VelocityXYZ,100};
else
    fprintf('Unknown device while configuring. Aborting. \n');
    return
end

if ~h.XsDevice_setOutputConfiguration(device,outputConfig)
    fprintf('Could not configure the device. Aborting. \n');
    return
end

% Put device into measurement mode
fprintf('Putting device into measurement mode... \n')
if ~h.XsDevice_gotoMeasurement(device)
    fprintf('Could not put device into measurement mode. Aborting. \n');
    return
end

pause(3);

fprintf("Device is measuring...");

