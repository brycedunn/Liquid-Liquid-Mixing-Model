folder = 'Data\DrainEaseRPM'; %set the name of the folder containing the data files

files = dir(strcat(folder,'\*.txt')); %Gets all the files in the folder
fl = length(files);
btimes = zeros(fl,1);
filenames = cell(fl,1);
for i = 1:fl % iterates through the files
    f = files(i);
    
    locationName = strcat(folder,'\',f.name); %creates a string with the files location
    dataTable = readtable(locationName); %gets the data from the file into a table
    h = height(dataTable); %h=rows in data table
    times = zeros(h,1); %create array to hold parsed times
    for j = 1:h %iterate through table times
        times(j) = timeparse(dataTable{j,1}); %convert timestamps into seconds
    end
    
    btimes(i) = btime(times,dataTable{:,2}); %adds calculated blend time to array
    filenames{i} = f.name; %adds file name to array
end

blendTable = table(filenames,btimes); %creates a table of file names and blend times
writetable(blendTable,strcat(folder,'\BlendTimeCSV.csv')); %creates a csv of the blend times in the chosen folder