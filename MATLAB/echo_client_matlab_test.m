close all;
% Server details
SERVER_IP = '192.168.1.10';
SERVER_PORT = 7;
 DATA_LENGTH = 1024*16;
%DATA_LENGTH = 16384*2;
% Echo the data
% echo_client_func_filtered(SERVER_IP,  SERVER_PORT, DATA_LENGTH); 
echo_client_func_4(SERVER_IP,  SERVER_PORT, DATA_LENGTH);