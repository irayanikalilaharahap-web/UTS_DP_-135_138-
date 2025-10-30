{
NIM_1 :135
NIM_2 :138
}

uses crt;

var
(* deklarasikan variabel yang diperlukan *)
    nama : string;
    jumlahBuku, lamaPeminjaman, i : integer;
    jenisBuku : char;
    denda, totalDenda : longint;
    
begin

    clrscr;

    writeln('=== SISTEM PEMINJAMAN BUKU ===');
    writeln;

    (* Input nama peminjam *)
    write('Masukkan nama peminjam :');
    readln(nama);

    (* Validasi jumlah buku (tidak boleh nol atau negatif) menggunakan perulangan *)
    repeat
        write('Masukkan jumlah buku yang dipinjam :');
        readln(jumlahBuku);
        until jumlahBuku > 0;
        totalDenda := 0;
        for i := 1 to jumlahBuku do 
        begin
          writeln('Buku ke-', i);

    (* Gunakan perulangan untuk meminta data setiap buku yang dipinjam *)
        (* Input judul buku *)
        write('Masukkan jenisBuku : ');
        readln (jenisBuku);

        (* Input jenis buku (F=Fiksi, N=Nonfiksi, R=Referensi) dengan validasi agar hanya huruf tersebut yang diterima *)
        repeat
            write('masukkan jenis buku (F/N/R) :');
            readln(jenisBuku);
            until (jenisBuku = 'F') or (jenisBuku = 'N') or (jenisBuku = 'R');

        (* Input lama peminjaman (hari), dengan validasi agar minimal 1 hari *)
        repeat
            write('masukkan lama peminjaman (hari) :');
            readln(lamaPeminjaman);
            until lamaPeminjaman >= 1;

        (* Tampilkan pesan berbeda tergantung jenis buku menggunakan operasi kondisi *)
        case jenisBuku of
            'F' : writeln('Selamat membaca kisah yang menarik!');
            'N' : writeln('Semoga bermanfaat menambah wawasan!');
            'R' : writeln('Jaga dengan baik, tidak boleh dibawa pulang!');
        end;

        (* Jika hari peminjaman lebih dari 7, hitung denda dan tambahkan ke total denda *)
        if lamaPeminjaman > 7 then
        begin
            denda := (lamaPeminjaman - 7) * 1000;
            totalDenda := totalDenda + denda;
            writeln('Denda untuk buku ini : Rp', denda);
        end
        else 
        begin
            writeln('Tidak ada denda untuk buku ini.');
        end;  

    writeln;
    writeln('==============================');
    (* Tampilkan total estimasi denda dan ucapan terima kasih kepada peminjam *)
    writeln('Total estimasi denda : Rp', totalDenda );
    writeln('Terima kasih ', nama, ' telah menggunakan sistem ini');
    writeln('==============================');
    readln;
    end;
end.

