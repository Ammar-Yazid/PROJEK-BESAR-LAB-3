program soal3;
uses crt;

var 
batas,angka:integer;
opsi:string;

begin
    clrscr;
    write('masukkan angka pembatas : ');
    readln(batas);
    write('masukkan opsi (ganjil/genap) : ');
    readln(opsi);

    write('HASIL PENYARINGAN ANGKA : ');
    angka := 0;
    while angka <= batas do
    begin
        if (opsi = 'ganjil') then
        begin
            angka += 1;
            if (angka mod 5 = 0) then
            continue;
            if (angka > batas) then
            continue;
            if (angka mod 2 <> 0) then
            begin
                write(angka, ' ');
            end;    
        end
        else if (opsi = 'genap') then
        begin
            angka += 2;
            if (angka = 1) then
            continue;
            if (angka mod 5 = 0) then
            continue;
            if (angka > batas) then
            continue;
            if (angka mod 2 <> 0) then
            continue
            else 
            begin
                write(angka, ' ');
            end;
        end;
    end;
end.