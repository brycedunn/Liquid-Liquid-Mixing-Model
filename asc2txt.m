%changes all .asc files in the folder to .txt files
folder = 'Data\FCRPM\'; %put a backslash on the end!!

files = dir(strcat(folder,'*.asc'));
for i = 1:length(files)
   f = files(i);
   n = char(f.name);
   c = strsplit(n,'.');
   newname = strcat(folder,c(1),'.txt');
   newname = char(newname);
   oldname = strcat(folder,f.name);
   movefile(oldname,newname)
end
clear