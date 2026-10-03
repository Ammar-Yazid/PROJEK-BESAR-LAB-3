program soal8;
uses crt;

var 
golongan:char;
jam,lembur:integer;
penghasilan,gajiPokok,bonus,bonusTambahan:int64;

begin
    clrscr;
    writeln('=================================================');
    writeln('|           PROGRAM PERHITUNGAN GAJI            |');
    writeln('=================================================');
    write('masukkan golongan anda di perusahaan ini (A/B/C): ');
    readln(golongan);
    write('berapa jam anda bekerja dalam seminggu : ');
    readln(jam);

    if (golongan = 'A') or (golongan = 'a') then
    begin
        gajiPokok := 1500000;
        if (jam <= 40) then
        begin
            penghasilan := gajiPokok;
            lembur := 0;
            bonus := 0;
        end
        else if (jam > 40) then 
        begin
            lembur := jam - 40;
            bonus := (jam - 40) * 20000;
            penghasilan := gajiPokok + ((jam - 40) * 20000);
        end;
    end
    else if (golongan = 'B') or (golongan = 'b') then
    begin
        gajiPokok := 2000000;
        if (jam <= 40) then
        begin
            lembur := 0;
            bonus := 0;
            penghasilan := gajiPokok;
        end
        else if (jam > 40) then 
        begin
            lembur := jam - 40;
            bonus := (jam - 40) * 20000;
            penghasilan := gajiPokok + ((jam - 40) * 20000);
        end;
    end
    else if (golongan = 'C') or (golongan = 'c') then 
    begin
        gajiPokok := 2500000;
        if (jam <= 40) then
        begin
            lembur := 0;
            bonus := 0;
            penghasilan := gajiPokok;
        end
        else if (jam > 40) and (jam <= 50) then
        begin
            lembur := jam - 40;
            bonus := (jam - 40) * 20000;
            penghasilan := gajiPokok + ((jam - 40) * 20000);
        end
        else if (jam > 50) then
        begin
            lembur := jam - 40;
            bonus := (jam - 40) * 20000;
            bonusTambahan := 100000;
            penghasilan := gajiPokok + 100000 + ((jam - 40) * 20000);
        end;
    end;

    writeln('=================================================');
    writeln('|            HASIL PERHITUNGAN PROGRAM          |');
    writeln('=================================================');
    writeln('ANDA BERASAL DARI GOLONGAN : ', golongan);
    writeln('ANDA MENERIMA GAJI POKOK : Rp', gajiPokok);
    writeln('ANDA TELAH LEMBUR SELAMA : ', lembur, ' JAM');
    writeln('ANDA MENERIMA BONUS LEMBUR SEBANYAK : Rp', bonus);
    if (golongan = 'C') or (golongan = 'c') then
    begin
        if (jam > 50) then
        writeln('ANDA MENERIMA BONUS GOLONGAN SEBANYAK : Rp', bonusTambahan);
    end;
    writeln('PENGHASILAN YANG ANDA TERIMA : Rp',penghasilan);
    writeln('=================================================');
end.