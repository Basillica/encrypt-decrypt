classdef charEncode
    % UNTITLED Summary of this class goes here
    % Detailed explanation goes here
    
    properties
        Property1
    end
    
    methods (Static)
        
        function[freq] = frequency(str)
            % Return the frequency of each character in the input string
            % Unique for generating transfer code.(unique with each text!)
            str=upper(str(:));
            str=[str{:}];
            AZ = 'A':'Z';
            long = sum(ismember(str,AZ));
            for k = 1:numel(AZ)
                freq(k,1) = 100*sum(ismember(str,AZ(k)))/long;
            end
        end
        
        
        function[Return] = charType(inp)
            AZ = 'A':'Z';
            az = 'a':'z';
            num = '0':'9';
            if sum(ismember(AZ,inp)) > 0
                Return = charEncode.ALPHA(inp);
            elseif sum(ismember(az,inp)) > 0
                Return = charEncode.alpha(inp);
            elseif sum(ismember(num,inp)) > 0
                Return = charEncode.numeric(str2double(inp));
            elseif inp == '.'
                Return = charEncode.alpha(inp);    
            elseif inp == '?'
                Return = charEncode.alpha(inp);
            elseif inp == '!'
                Return = charEncode.alpha(inp);
            else
                disp('Consider Updating Library!');
                error("Input argument contains invalid value: %s", inp);
            end
        end
        
        function[n] = alpha(alphabet)
            switch (alphabet)
                case "a"
                    n=1;
                case "b"
                    n=2;
                case "c"
                    n=3;
                case "d"
                    n=4;
                case "e"
                    n=5;
                case "f"
                    n=6;
                case "g"
                    n=7;
                case "h"
                    n=8;
                case "i"
                    n=9;
                case  "j"
                    n=10;
                case "k"
                    n=11;
                case "l"
                    n=12;
                case "m"
                    n=13;
                case "n"
                    n=14;
                case "o"
                    n=15;
                case "p"
                    n=16;
                case "q"
                    n=17;
                case "r"
                    n=18;
                case "s"
                    n=19;
                case "t"
                    n=20;
                case "u"
                    n=21;
                case "v"
                    n=22;
                case "w"
                    n=23;
                case "x"
                    n=24;
                case "y"
                    n=25;
                case "z"
                    n=26;
                case "."
                    n=100;
                case "?"
                    n=101;
                case "!"
                    n=102;
                case " "
                    n = 105;
            end
        end
        
        
        function[n] = ALPHA(alphabet)
            switch (alphabet)
                case "A"
                    n=37;
                case "B"
                    n=38;
                case "C"
                    n=39;
                case "D"
                    n=40;
                case "E"
                    n=41;
                case "F"
                    n=42;
                case "G"
                    n=43;
                case "H"
                    n=44;
                case "I"
                    n=45;
                case  "J"
                    n=46;
                case "K"
                    n=47;
                case "L"
                    n=48;
                case "M"
                    n=49;
                case "N"
                    n=50;
                case "O"
                    n=51;
                case "P"
                    n=52;
                case "Q"
                    n=53;
                case "R"
                    n=54;
                case "S"
                    n=55;
                case "T"
                    n=56;
                case "U"
                    n=57;
                case "V"
                    n=58;
                case "W"
                    n=59;
                case "X"
                    n=60;
                case "Y"
                    n=61;
                case "Z"
                    n=62;
            end
        end
        
        function[n] = numeric(alphabet)
            switch (alphabet)
                case 0
                    n = 27;
                case 1
                    n = 28;
                case 2
                    n = 29;
                case 3
                    n = 30;
                case 4
                    n = 31;
                case 5
                    n = 32;
                case 6
                    n = 33;
                case 7
                    n = 34;
                case 8
                    n = 35;
                case 9
                    n = 36;
            end
        end
    end
end

