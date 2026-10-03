program soal9;
uses crt;

var 
tahun:longint;
bulan:integer;
kabisat:boolean;

begin
    clrscr;
    writeln('======================================================');
    writeln('|                 PROGRAM BULAN KABISAT              |');
    writeln('======================================================');
    write('masukkan tahun : ');
    readln(tahun);
    write('masukkan urutan bulan : ');
    readln(bulan);

    writeln('======================================================');
    writeln('PENENTUAN TAHUN');
    if (tahun mod 400 = 0) or (tahun mod 4 = 0) and (tahun mod 100 <> 0) then
    begin
        kabisat := True;
        writeln(' tahun ini bulan kabisat');
    end
    else
    begin
        kabisat := False;
        writeln(' tahun ini bukan bulan kabisat');
    end;
    writeln('======================================================');

    writeln('PENENTUAN HARI DALAM SATU BULAN');
    case bulan of
        1: writeln(' jumlah hari di bulan januari : 31 hari');
        2: begin
            if (kabisat = True) then
            begin
                writeln(' jumlah hari di bulan februari : 29 hari');
            end
            else if (kabisat = False) then
            begin
                writeln(' jumlah hari di bulan februari :28 hari');
            end;
        end;
        3: writeln(' jumlah hari di bulan maret : 31 hari');
        4: writeln(' jumlah hari di bulan april : 30 hari');
        5: writeln(' jumlah hari di bulan mei : 31 hari');
        6: writeln(' jumlah hari di bulan juni : 30 hari');
        7: writeln(' jumlah hari di bulan juli : 31 hari');
        8: writeln(' jumlah hari di bulan agustus : 31 hari');
        9: writeln(' jumlah hari di bulan september : 30 hari');
        10: writeln(' jumlah hari di bulan oktober : 31 hari');
        11: writeln(' jumlah hari di bulan november : 30 hari');
        12: writeln(' jumlah hari di bulan desember : 31 hari');

        else
            writeln(' input tidak valid');
        end;
    writeln('======================================================');
end.