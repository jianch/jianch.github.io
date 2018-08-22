function trigger(sti_trigger)

% [input] = pp(pins,[output],[slowChecks],[port],[address])
% pp(uint8([2 3 4 5 6 7 8 9]), [0 0 0 0 0 0 0 0], 0, uint8(0), uint64(53248));

if sti_trigger == 0
    bin_value = [0 0 0 0 0 0 0 0];
    pp(uint8([2 3 4 5 6 7 8 9]), bin_value, 0, uint8(0), uint64(53248));
end

if sti_trigger == 1
    bin_value = [1 0 0 0 0 0 0 0];
    pp(uint8([2 3 4 5 6 7 8 9]), bin_value, 0, uint8(0), uint64(53248));
end

if (1 < sti_trigger)&&(sti_trigger < 4)
    bin_value = strcat('000000',dec2bin(sti_trigger));
    bin_value = fliplr(bin_value);
    bin_value = bin_value - '0' ;
    pp(uint8([2 3 4 5 6 7 8 9]), bin_value, 0, uint8(0), uint64(53248));
end

if (3 < sti_trigger)&&(sti_trigger < 8)
    bin_value = strcat('00000',dec2bin(sti_trigger));
    bin_value = fliplr(bin_value);
    bin_value = bin_value - '0' ;
    pp(uint8([2 3 4 5 6 7 8 9]), bin_value, 0, uint8(0), uint64(53248));
end

if (7 < sti_trigger)&&(sti_trigger < 16)
    bin_value = strcat('0000',dec2bin(sti_trigger));
    bin_value = fliplr(bin_value);
    bin_value = bin_value - '0' ;
    pp(uint8([2 3 4 5 6 7 8 9]), bin_value, 0, uint8(0), uint64(53248));
end

if (15 < sti_trigger)&&(sti_trigger < 32)
    bin_value = strcat('000',dec2bin(sti_trigger));
    bin_value = fliplr(bin_value);
    bin_value = bin_value - '0' ;
    pp(uint8([2 3 4 5 6 7 8 9]), bin_value, 0, uint8(0), uint64(53248));
end

if (31 < sti_trigger)&&(sti_trigger < 64)
    bin_value = strcat('00',dec2bin(sti_trigger));
    bin_value = fliplr(bin_value);
    bin_value = bin_value - '0' ;
    pp(uint8([2 3 4 5 6 7 8 9]), bin_value, 0, uint8(0), uint64(53248));
end

if (63 < sti_trigger)&&(sti_trigger < 128)
    bin_value = strcat('0',dec2bin(sti_trigger));
    bin_value = fliplr(bin_value);
    bin_value = bin_value - '0' ;
    pp(uint8([2 3 4 5 6 7 8 9]), bin_value, 0, uint8(0), uint64(53248));
end

if sti_trigger > 127
    bin_value = dec2bin(sti_trigger);
    bin_value = fliplr(bin_value);
    bin_value = bin_value - '0' ;
    pp(uint8([2 3 4 5 6 7 8 9]), bin_value, 0, uint8(0), uint64(53248));
end







