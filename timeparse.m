function [ t ] = timeparse(timestring)
s = strsplit(char(timestring),':');
t = 0 + str2double(s{1})*3600;
t = t + str2double(s{2})*60;
t = t + str2double(s{3});
end