function [] = super(value)

    if value == 1
        prompt = {'Enter your desired text'};
        dlgtitle = 'Input Text!';
        definput = {'text'};
        opts.Interpreter = 'tex';
        text = convertCharsToStrings(inputdlg(prompt,dlgtitle,[1 200],definput,opts));

        %% Initialization
        [transferMatrix] = initialize.initialization(text);

        %% Key Generation:
        key = initialize.getKey(text);

        %% Encryption
        FmatOld = transferMatrix';
        Fmat = encryptDecrypt.encrypt(FmatOld,key);
        save('text.txt', 'Fmat', '-ascii', '-double', '-tabs')

    elseif value == 2
        
        prompt = {'Enter name of .txt file:','Enter Unique Code:'};
        dlgtitle = 'Input';
        dims = [1 35];
        definput = {'filename','000000'};
        value = inputdlg(prompt,dlgtitle,dims,definput);
        
        file = importfile(value{1,1});
        Fmat = file{:,:};
        key = value{2,1};
        %% Decryption
        FmatNew = encryptDecrypt.decrypt(Fmat,key);
        text2 = encryptDecrypt.decode(FmatNew);
        disp('Your Message is: ');
        disp(text2);
    end
    
end

