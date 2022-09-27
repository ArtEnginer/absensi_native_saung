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
            $nama = $data3['name_user']??'-';
            $nis = $data3['nis_user']??'-';
        ?>
            <tr>
                <td><?= $no++; ?></td>
                <td><?= $nis; ?></td>
                <td><?= $nama; ?></td>
                <td><?= $nama_bln; ?></td>
                <td><?= $jumlah; ?></td>
            </tr>
        <?php } ?>
    </tbody>
</table>