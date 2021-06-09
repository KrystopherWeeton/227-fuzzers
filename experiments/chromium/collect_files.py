import shutil


file = open("/home/jeffersonchien/chromium/src/ll_file_search.txt")
file_paths = []
for line in file:
    file_paths.append(line[:-1])

destination_base_path = "/home/jeffersonchien/chromium/src/all_ll_files/"
#print(file_paths)

for i in file_paths:
    source_path = i;
    temp = i.split("/")
    #print(temp[len(temp) - 1])
    destination_path = destination_base_path + temp[len(temp) - 1]
    shutil.copy(source_path, destination_path)
