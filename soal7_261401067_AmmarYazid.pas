program soal7;
uses crt;

var 
kendaraan:char;
j:integer;
tarifParkir:int64;

begin
    clrscr;
    writeln('-----------------------------------------------------');
    writeln('|               SISTEM PARKIR TERPADU               |');
    writeln('-----------------------------------------------------');
    writeln('(M): mobil = Rp5000 jam pertama,tambahan Rp3000/jam');
    writeln('(K): kereta = Rp2000 jam pertama,tambahan Rp1000/jam');
    writeln('(B): bus = Rp10000 jam pertama,tambahan Rp5000/jam');
    write('pilih kendaraanmu : ');
    readln(kendaraan);
    write('berapa jam kendaraan anda telah parkir : ');
    readln(j);

    case kendaraan of
        'm', 'M': 
        begin
            if (j = 1) then
            begin
                tarifParkir := 5000;
            end
            else if (j > 1) and (j <=10) then
            begin
                tarifParkir := 5000 + ((j - 1) * 3000);
            end
            else if (j > 10) then
            begin
                tarifParkir := 30000;
            end;
        end;
        'k', 'K':
        begin
            if (j = 1) then
            begin
                tarifParkir := 2000;
            end
            else if (j > 1) and (j <= 10) then
            begin
                tarifParkir := 2000 + ((j-1) * 1000);
            end
            else if (j > 10) then
            begin
                tarifParkir := 10000;
            end;
        end;
        'b', 'B':
        begin
            if (j = 1) then
            begin
                tarifParkir := 10000;
            end
            else if (j > 1) and (j <=10) then
            begin
                tarifParkir := 10000 + ((j-1) * 5000);
            end
            else if (j > 10) then
            begin
                tarifParkir := 50000;
            end;
        end
        else
        begin
            writeln('pilihan kendaraan tidak valid!!');
            tarifParkir := 0;
        end;
    end;

    writeln('====================================================');
    writeln('ANDA SUDAH MEMARKIRKAN KENDARAAN SELAMA : ',j, ' JAM');
    writeln('ANDA DIKENAKAN TARIF PARKIR SEBANYAK : Rp', tarifParkir);
    writeln('====================================================');
end.