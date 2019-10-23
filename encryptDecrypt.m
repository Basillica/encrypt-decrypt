classdef encryptDecrypt
    
    properties
        Fmat;
        Amat;
        key;
    end
    
    methods (Static)
        function Fmat = encrypt(key,mat)
            B1 = key.*mat;
            B2 = -key.*mat;
            [u1B1,s1B1,v1B1] = svd(B1);
            [u2B2,s2B2,v2B2] = svd(B2);
            c1 = u1B1*s2B2*v1B1';
            c2 = u2B2*s1B1*v2B2';
            Fmat = [c1 c2];
        end
        
        
        function Amat = decrypt(Fmat,key)
            c1 = Fmat(:,1);
            c2 = Fmat(:,2);
            [u1c1,s1c1,v1c1] = svd(c1);
            [u2c2,s2c2,v2c2] = svd(c2);
            B1 = u1c1*s2c2*v1c1';
            B2 = u2c2*s1c1*v2c2';
            Amat = B1/str2num(key);
        end
        
        function[txt] = decode(FmatNew)
            txt = "";
            for k = 1:numel(FmatNew)
                result = convertCharsToStrings(charDecode.alpha(round(FmatNew(k))));
                txt = txt+result;
            end
        end
    end
end
