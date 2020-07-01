% read data from file saved in p-gales-1.0.2 format into a variable
% sized number_of_mesh_nodes

function load_var = openFile(name)   
            file_open = fopen(name,'r');
            fseek(file_open,4,'bof');
            load_var = fread(file_open,'double');
            fclose(file_open);
return