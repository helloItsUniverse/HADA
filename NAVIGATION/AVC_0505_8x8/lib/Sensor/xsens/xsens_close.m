% Close port and XsControl object
fprintf('\rClosing port and XsControl object... \n');
h.XsControl_closePort(portName);
h.XsControl_close();

% Release COM-object
fprintf('Releasing COM-object... \n');
delete(h);
clear h;
fprintf('Successful exit. \n');

