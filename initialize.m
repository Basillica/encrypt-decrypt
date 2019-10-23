classdef initialize
    
    properties
        Property1
    end
    
    methods (Static)
        
        function obj = method1(str)
            obj.charArray = strsplit(string(str));
            obj.charLength = max(size(obj.charArray));
        end
        
        function [key] = getKey(text)
            disp('Supply a KeyCode for encryption: ')
            n = '1: Prompt program to generate unique code \n2: Supply a code.\n';
            value = input(n);
            if value == 1
                key = charEncode.frequency(text);
                key = prod(nonzeros(key));
                key = str2double(sprintf('%12.f',key));
                disp("Your generated Key is: ");
                disp(sprintf('%12.f',key));
                disp("Please keep safe!");
            elseif value == 2
                prompt = "Please supply a NUMERIC KEY of desired length: \n";
                key = input(prompt);
                disp("Your supplied Key is: ");
                disp(key);
                disp("Please keep safe!");
            else
                disp('Wrong Input!');
                return;
            end
        end
        
        
        function [bigfile,space] = initialization(text)
            resu = initialize.method1(text);
            bigfile = [];
            
            for values = 1:numel(resu.charArray)
                mat = [];
                
                for k = 1:length(resu.charArray{1,values})
                    result = charEncode.charType(resu.charArray{1,values}(k));
                    mat = [mat result];
                end
                
                bigfile = [bigfile mat];
                bigfile = [bigfile 105];
            end
            
        end
        
    end
end

