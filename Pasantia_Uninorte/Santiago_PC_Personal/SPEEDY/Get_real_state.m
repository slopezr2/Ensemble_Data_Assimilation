ini_date='1982010100';
date=ini_date;
M=12;
path_true_states='C:\Users\SANTIAGO\Documents\Pasantia_Uninorte\Santiago_PC_Personal\SPEEDY\prev_state\';
for i=1:12
    
    [U_true(:,:,:,i),V_true(:,:,:,i),T_true(:,:,:,i),Q_true(:,:,:,i),PS_true(:,:,i)]=readgrad_rol([path_true_states date '.grd']);
    date=next_time(date);
end