<!-- table -->
<h3>LAPORAN LKP ABSENSI SAUNG IT BUMIAYU</h3>

<table class="table datatables" width="100%">
    <caption style="caption-side: top">LAPORAN LKP ABSENSI SAUNG IT BUMIAYU</caption>

    <thead>
        <tr>
            <!-- <th>NO</th> -->
            <th>NIS</th>
            <th>Nama</th>
            <th>Bulan</th>
            <th>Jumlah Masuk</th>

        </tr>
    </thead>
    <tfoot>
        <tr>
            <!-- <th>NO</th> -->
            <th>NIS</th>
            <th>Nama</th>
            <th>Bulan</th>
            <th>Jumlah Masuk</th>

        </tr>
    </tfoot>
    <tbody>

        <?php
        // Jumlahkan data berdasarkan id_bln dan jumlahkan data berdasarkan id_user dan id_bln
        $sql = "SELECT id_bln, id_user, COUNT(id_user) AS jumlah FROM data_absen GROUP BY id_bln, id_user";
        $query = $conn->query($sql);
        $no = 1;
        while ($data = $query->fetch_assoc()) {
            $id_bln = $data['id_bln'];
            $id_user = $data['id_user'];
            $jumlah = $data['jumlah'];

            // Ambil nama bulan
            $sql2 = "SELECT nama_bln FROM bulan WHERE id_bln = '$id_bln'";
            $query2 = $conn->query($sql2);
            $data2 = $query2->fetch_assoc();
            $nama_bln = $data2['nama_bln'];

            // Ambil nama user
            $sql3 = "SELECT name_user, nis_user FROM detail_user WHERE id_user = '$id_user'";
            $query3 = $conn->query($sql3);
            $data3 = $query3->fetch_assoc();
            $nama = $data3['name_user'] ?? '-';
            $nis = $data3['nis_user'] ?? '-';
        ?>
            <tr>

                <td><?= $nis; ?></td>
                <td><?= $nama; ?></td>
                <td><?= $nama_bln; ?></td>
                <td><?= $jumlah; ?></td>
            </tr>
        <?php } ?>
    </tbody>
</table>


<h3>LAPORAN JURNAL LKP SAUNG IT BUMIAYU</h3>
<table class="table datatables" width="100%">
    <caption style="caption-side: top">LAPORAN JURNAL LKP SAUNG IT BUMIAYU</caption>

    <thead>
        <tr>
            <!-- <th>NO</th> -->
            <th>NIS</th>
            <th>Nama</th>
            <th>Instansi</th>

            <th>Catatan</th>

        </tr>
    </thead>

    <tbody>
        <?php
        // ambil data user
        $sql = "SELECT * FROM detail_user";
        $query = $conn->query($sql);
        while ($data = $query->fetch_assoc()) {
            $id_user = $data['id_user'];
            $nis = $data['nis_user'];
            $nama = $data['name_user'];
            $instansi = $data['sklh_user'];
        ?>

            <tr>
                <td><?= $nis; ?></td>
                <td><?= $nama; ?></td>
                <td><?= $instansi; ?></td>
                <td>
                    <?php
                    // ambil data catatan berdasarkan id_user
                    $sql2 = "SELECT * FROM catatan WHERE id_user = '$id_user'";
                    $query2 = $conn->query($sql2);
                    while ($data2 = $query2->fetch_assoc()) {
                        $catatan = $data2['isi_cat'];
                        // ambil data bulan berdasarkan id_bln
                        $id_bln = $data2['id_bln'];
                        $sql3 = "SELECT nama_bln FROM bulan WHERE id_bln = '$id_bln'";
                        $query3 = $conn->query($sql3);
                        $data3 = $query3->fetch_assoc();
                        $nama_bln = $data3['nama_bln'];
                        $id_tgl = $data2['id_tgl'];
                        $date = $id_tgl . '/' . $nama_bln;
                        echo '(' . $date . ') ' . $catatan . ' <br>';
                    }

                    ?>
                </td>
            </tr>
        <?php } ?>

    </tbody>

</table>