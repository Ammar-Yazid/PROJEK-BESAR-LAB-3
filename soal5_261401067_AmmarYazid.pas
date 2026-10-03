program soal5;
uses crt;

var 
m,n,i,j,jumlahLulus,jumlahTidakLulus:integer;
nilai,totalNilai,rerata:real;
status:string;
begin
    writeln('-----SELAMAT DATANG DI MyRECAPITULATIONS-----');
    write('masukkan jumlah mahasiswa : ');
    readln(m);
    write('masukkan jumlah tugas mahasiswa : ');
    readln(n);
    writeln('---------------------------------------------');

    jumlahLulus := 0;
    jumlahTidakLulus := 0;

    for i := 1 to m do 
    begin
        writeln('MAHASISWA KE-',i);
        totalNilai := 0;
        for j := 1 to n do 
        begin
            write(' masukkan nilai mahasiswa : ');
            readln(nilai);
            totalNilai := totalNilai + nilai;
        end;

        rerata := totalNilai / n;

        if (rerata >= 65) then
        begin
            status := 'LULUS';
            jumlahLulus := jumlahLulus + 1;
        end
        else
        begin
            status := 'TIDAK LULUS';
            jumlahTidakLulus := jumlahTidakLulus + 1;
        end;

        writeln('rata-rata mahasiswa ke-',i,' = ', rerata:0:2);
        writeln('mahasiswa ke-',i , ' dinyatakan ', status);
        writeln('---------------------------------------------');
    end;
    writeln('-------------HASIL REKAPITULASI--------------');
    writeln('---------------------------------------------');
    writeln('jumlah mahasiswa yang lulus : ', jumlahLulus);
    writeln('jumlah mahasiswa yang tidak lulus : ', jumlahTidakLulus);
    writeln('---------------------------------------------');
end.