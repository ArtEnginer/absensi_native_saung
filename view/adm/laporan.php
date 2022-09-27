<!-- table -->
<h3>Laporan Absensi</h3>

<table id="datatables" class="table" width="100%">
    <thead>
        <tr>
            <th>NO</th>
            <th>NIS</th>
            <th>Nama</th>
            <th>Bulan</th>
            <th>Jumlah Masuk</th>

        </tr>
    </thead>
    <tfoot>
        <tr>
            <th>NO</th>
            <th>NIS</th>
            <th>Nama</th>
            <th>Bulan</th>
            <th>Jumlah Masuk</th>

        </tr>
    </tfoot>
    <tbody>

        <?php
        // jumlahkan data berdasarkan id_user in data_absen yang sama
        // ambil data berdasarkan id_user
        $sql = "SELECT * FROM data_absen GROUP BY id_user";
        $query = $conn->query($sql);
        $no = 0;
        while ($data = $query->fetch_assoc()) {
            $id_user = $data['id_user'];
            $id_bln = $data['id_bln'];
            $sql2 = "SELECT * FROM detail_user WHERE id_user='$id_user'";
            $query2 = $conn->query($sql2);
            $data2 = $query2->fetch_assoc();
            $name = $data2['name_user'] ?? "-";
            $nis = $data2['nis_user'] ?? "-";
            $sql3 = "SELECT * FROM data_absen WHERE id_user='$id_user'";
            $query3 = $conn->query($sql3);
            $jumlah = $query3->num_rows;
            $sql4 = "SELECT * FROM bulan WHERE id_bln='$id_bln'";
            $query4 = $conn->query($sql4);
            $data4 = $query4->fetch_assoc();
            $bulan = $data4['nama_bln'] ?? "-";
           
            $no++;

            echo "<tr>
                <td>$no</td>
                    <td>$nis</td>
                    <td>$name</td>
                    <td>$bulan</td>
                    <td>$jumlah</td>
                </tr>";
        }



        ?>
    </tbody>
</table>