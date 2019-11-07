function [ new_time ] = next_time( current_time )
    format='yyyymmddHH';
    step=0.25;
    new_time=datenum(current_time,format)+step;
    new_time=datestr(new_time,format);
end

