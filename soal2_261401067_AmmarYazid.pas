program soal2;
uses crt;

var 
sandi:string;
percobaan:integer;

begin
    clrscr;
    percobaan := 0;
    repeat 
    percobaan := percobaan + 1;
    write('MASUKKAN PASSWORD : ');
    readln(sandi);

    if (sandi = 'pascal123') then
    begin
        write('LOGIN BERHASIL!! SELAMAT DATANG');
        break;
    end
    else
    begin
        if (percobaan < 3) then
        begin
            writeln('SANDI SALAH!! ULANGIN');
        end;
    end;

    until percobaan = 3;
    if (percobaan = 3) and (sandi <> 'pascal123') then
    begin
        write('AKSES DITOLAK!! AKUN TERKUNCI');
    end;
end.