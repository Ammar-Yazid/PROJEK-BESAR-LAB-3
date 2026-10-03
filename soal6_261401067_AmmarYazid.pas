program soal6;
uses crt;

var 
tugas,UTS,UAS,hadir:real;
nilaiTugas,nilaiUTS,nilaiUAS,totalNilai,kehadiran:real;
status,nilaiIndex:string;

begin
    clrscr;
    writeln('--------------------------------------------');
    writeln('|              SELAMAT DATANG              |');
    writeln('--------------------------------------------');
    write('masukkan nilai tugas (1-100) : ');
    readln(tugas);
    write('masukkan nilai UTS (1-100): ');
    readln(UTS);
    write('masukkan nilai UAS (1-100) : ');
    readln(UAS);
    write('masukkan jumlah kehadiran (1-16) : ');
    read(hadir);

    nilaiTugas := tugas * 0.3;
    nilaiUTS := UTS * 0.3;
    nilaiUAS := UAS * 0.4;

    totalNilai := nilaiTugas + nilaiUTS + nilaiUAS;

    // jumlah kelas satu matkul dalam satu semester = 16
    kehadiran := (hadir / 16) * 100;

    if (totalNilai >= 60) and (kehadiran >= 80) then
    begin
        status := 'LULUS';
    end
    else
    begin
        status := 'TIDAK LULUS';
    end;

    //totalNilaiAkhir := 400;

    if (totalNilai >= 85) then
    begin
        nilaiIndex := 'A';
    end
    else if (totalNilai <= 84) and (totalNilai >= 75) then
    begin
        nilaiIndex := 'B';
    end
    else if (totalNilai <= 74) and (totalNilai >= 60) then
    begin
        nilaiIndex := 'C';
    end
    else if (totalNilai <= 59) and (totalNilai >= 50) then
    begin
        nilaiIndex := 'D';
    end
    else if (totalNilai < 50) then
    begin
        nilaiIndex := 'E';
    end;

    writeln('--------------------------------------------');
    writeln('|              HASIL PENENTUAN             |');
    writeln('--------------------------------------------');
    writeln('status anda : ',status);
    writeln('nilai index anda : ',nilaiIndex);
    writeln('kehadiran : ', kehadiran:0:2,'%');
    writeln('--------------------------------------------');
end.