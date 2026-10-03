program soal4;
uses crt;

var 
ulang:char;
operasi,number1,number2,hasil,sisa:integer;
angka1,angka2,tambah,kurang,kali,bagi:real;

begin
    clrscr;
    writeln('SELAMAT DATANG DI KALKULATOR SEDERHANA');
    writeln('--------------------------------------');
    repeat
    writeln('1. PENAMBAHAN');
    writeln('2. PENGURANGAN');
    writeln('3. PERKALIAN');
    writeln('4. PEMBAGIAN REAL');
    writeln('5. DIV & MOD');
    write('masukkan operasi yang dibutuhkan (1/2/3/4/5) : ');
    readln(operasi);
    writeln('--------------------------------------');
    if (operasi = 5) then
    begin
        write('masukkan angka pertama : ');
        readln(number1);
        write('masukkan angka kedua : ');
        readln(number2);
    end
    else
    begin
        write('masukkan angka pertama : ');
        readln(angka1);
        write('masukkan angka kedua : ');
        readln(angka2);
    end;
    writeln('--------------------------------------');
    case operasi of
    1: begin
        tambah := angka1 + angka2;
        writeln('hasil dari ', angka1:0:1, ' + ', angka2:0:1, ' = ', tambah:0:1);
    end;
    2: begin
        kurang := angka1 - angka2;
        writeln('hasil dari ', angka1:0:1, ' - ', angka2:0:1, ' = ', kurang:0:1);
    end;
    3: begin
        kali := angka1 * angka2;
        writeln('hasil dari ', angka1:0:1, ' x ', angka2:0:1, ' = ', kali:0:1);
    end;
    4: begin
        if (angka2 = 0) then
        begin
            write('nilai tidak terdefinisi');
        end
        else
        begin
            bagi := angka1 / angka2;
            writeln('hasil dari ', angka1:0:1, ' : ', angka2:0:1, ' = ', bagi:0:1);
        end;
    end;
    5: begin
        hasil := number1 div number2;
        sisa := number1 mod number2;
        writeln('hasil dari ', number1, ' div ', number2, ' = ', hasil);
        writeln('hasil dari ', number1, ' mod ', number2, ' = ', sisa);
    end;
    else
    begin
        write('input salah');
    end;
    end;
    writeln('--------------------------------------');
    writeln;
    write('apakah kamu ingin melakukan perhitungan lagi (y/t): ');
    read(ulang);
    writeln;
    
    until (ulang = 't') or (ulang = 'T');
    if (ulang = 't') or (ulang = 'T') then
    begin
        write('TERIMA KASIH TELAH MENGGUNAKAN KALKULATOR');
    end;
end.