program soal1;
uses crt;

var 
n,i:integer;
harga:array[1..100] of int64;
total:int64;
diskon:string;
potongan,totalHarga:real;

begin
    clrscr;
    writeln('--------SELAMAT DATANG DI TOKO SEDERHANA-------');
    writeln();
    write('masukkan jumlah barang yang di beli : ');
    readln(n);

    for i := 1 to n do 
    begin
        write('berapa harga barang ke ', i, ' : ');
        readln(harga[i]);
        total := total + harga[i]; 
    end;
    if (total < 100000) then 
    begin
        diskon := '-';
        totalHarga := total
    end
    else if (total >= 100000) and (total < 500000) then 
    begin
        diskon := '10%';
        potongan := total * 0.1;
        totalHarga := total - potongan;
    end
    else if (total > 500000) then
    begin
        diskon := '20%';
        potongan := total * 0.2;
        totalHarga := total - potongan;
    end;
    writeln();
    writeln('---------------RINCIAN BELANJA---------------');
    writeln();
    for i := 1 to n do 
    begin
        writeln('HARGA BARANG KE ', i,' : Rp',harga[i]);
    end;
    writeln('TOTAL HARGA (SEBELUM DISKON) : Rp', total);
    writeln('DISKON YANG DI PEROLEH : ', diskon);
    writeln('TOTAL HARGA SETELAH DISKON : Rp', totalHarga:0:0);
    writeln();
    writeln('---------------------------------------------');
end.