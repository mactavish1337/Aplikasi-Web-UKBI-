<?php
session_start();
require "koneksi.php";
if (!isset($_SESSION["login"])) {
    header("Location: login.php");
    exit;
}
?>

<div class="row">
    <div class="col-sm-12">
        <div id="waktu">00:00</div>
        <div class="alert alert-warning alert-dismissible fade show mt-3" role="alert">
            <strong>Aturan pengerjaan : </strong> Soal dan jawaban akan tampil secara acak. setiap jawaban benar maka anda mendapat point +4 dan setiap jawaban salah anda tidak mendapatkan poin.
        </div>

        <h1 class="mt-3 text-center">Score Anda : <div id="nilai">0</div>
        </h1>

        <?php
        $no = 1;
        $pp = 0;
        $soal = mysqli_query($con, "SELECT * from tbl_soal ORDER BY RAND() LIMIT 30");

        $total = mysqli_num_rows($soal);

        while ($row = mysqli_fetch_assoc($soal)) : ?>

            <?php
            $jawaban = mysqli_query($con, "SELECT * from tbl_jawaban WHERE id_soal = '" . $row["id"] . "' ORDER BY RAND()  "); ?>

            <form id="form_jawab_<?= $no; ?>" method="POST" action="hasil.php">
                <audio controls>
                    <source src="audio/<?= $row['audio']; ?>" type="audio/mpeg">
                </audio>
                <p class="fs-5"><?= $no; ?>. <?= $row['soal']; ?></p>

                <div class="kotak">
                    <?php
                    $total = mysqli_num_rows($jawaban);
                    while ($rowjwb = mysqli_fetch_assoc($jawaban)) :

                        if ($total == 4) {
                            $abjad = 'A';
                        } elseif ($total == 3) {
                            $abjad = 'B';
                        } elseif ($total == 2) {
                            $abjad = 'C';
                        } else {
                            $abjad = 'D';
                        }
                    ?>

                        <div class="row">
                            <div class="col-lg-12">
                                <input type="hidden" id="id" name="id" value="<?= $row['id'] ?>">
                                <input type="hidden" name="sementara" value="0">
                                <div class="input-group">
                                    <span class="input-group-text" id="addon-wrapping"><input class="cursor" type="radio" id="jawaban_<?= $no; ?>" name="jawaban" value="<?= $rowjwb['pilihan_jawab'] ?>"></span>
                                    <input type="text" class="form-control" value="<?= $abjad . '. ' . $rowjwb['pilihan_jawab'] ?>" readonly>

                                </div><!-- /input-group -->
                            </div><!-- /.col-lg-6 -->
                        </div><!-- /.row -->

                    <?php $total--;
                    endwhile; ?>
                </div>

                <br>
                <div class="col-12 d-flex justify-content-center">
                    <button id="btn_pilih_<?= $no; ?>" class="btn btn-lg btn-success">Pilih</button>
                </div>


            </form>

            <script>
                $("#form_jawab_<?php echo $no; ?>").submit(function() {

                    var next = '<?php echo $no + 1; ?>';
                    if (!$("#jawaban_<?= $no; ?>:checked").val()) {
                        swal({
                            title: "Hello.. !",
                            text: "Pilih dulu jawabannya bro..!!",
                            imageUrl: 'assets/img/warn.png'
                        });
                        return false;
                    } else {
                        $.ajax({
                            type: 'POST',
                            url: $(this).attr('action'),
                            data: $(this).serialize(),
                            success: function(data) {
                                var myarr = data.split('/');
                                if (myarr[0] == 'jawaban anda benar, anda dapat 4 point') {
                                    swal({
                                        title: "Benar !",
                                        text: myarr[0],
                                        imageUrl: 'assets/img/up.png'
                                    });
                                } else {
                                    swal({
                                        title: "Salah !",
                                        text: myarr[0],
                                        imageUrl: 'assets/img/down.png'
                                    });
                                }
                                $('#nilai').text(myarr[1]);
                                $('#form_jawab_<?php echo $no; ?>').hide();
                                $('#form_jawab_' + next).show();

                                return false;
                            }
                        });
                        return false;
                    }


                });

                // timer countdown
                var timer;
                var timeRemaining;

                function countdownTimer(duration, display, no, total) {
                    var button = document.getElementById("btn_pilih_" + total);
                    console.log(button);
                    var timer = duration,
                        minutes, seconds;
                    timerInterval = setInterval(function() {
                        minutes = parseInt(timer / 60, 10);
                        seconds = parseInt(timer % 60, 10);

                        minutes = minutes < 10 ? "0" + minutes : minutes;
                        seconds = seconds < 10 ? "0" + seconds : seconds;

                        display.textContent = minutes + ":" + seconds;

                        if (timer < 50) {
                            document.getElementById("waktu").style.color = "red";
                        }
                        if (--timer < 0) {
                            // Countdown selesai
                            clearInterval(timerInterval);
                            // Tambahkan logika setelah countdown selesai di sini
                            display.textContent = "waktu anda habis";
                            document.getElementById("waktu").style.color = "white";
                            direct();
                        }
                    }, 1000);

                    button.onclick = function() {
                        document.getElementById("waktu").style.display = "none";
                    }
                }

                function direct() {
                    $('#kontenku').load('times_up.php');
                }

                // Menggunakan countdownTimer
                var fiveMinutes = 60 * 40, // Mengatur durasi countdown (dalam detik)
                    display = document.querySelector('#waktu');

                var total = '<?php echo mysqli_num_rows($soal); ?>';
                var no = '<?php echo $no; ?>';
                countdownTimer(fiveMinutes, display, no, total);
            </script>

        <?php
            $no++;

        endwhile;
        ?>

        <script>
            var display = document.querySelector('#waktu');
            display.textContent = "00:00";
        </script>
        <?php for ($i = 2; $i <= 20; $i++) {  ?>
            <script>
                $('#form_jawab_<?= $i; ?>').hide();
            </script>
        <?php } ?>

    </div>

</div>