program soal10;
uses crt;

var 
hari:integer;

begin
    clrscr;
    write('masukkan angka : ');      //input angka dari 1 hingga 7  selain itu tidak valid
    readln(hari);

    case hari of
        1: writeln('Hari Senin');
        2: writeln('Hari Selasa');
        3: writeln('Hari Rabu');
        4: writeln('Hari Kamis');
        5: writeln('Hari Jumat');
        6: writeln('Hari Sabtu');
        7: writeln('Hari Minggu');
        else
            writeln('input tidak valid!!');
        end;
end.