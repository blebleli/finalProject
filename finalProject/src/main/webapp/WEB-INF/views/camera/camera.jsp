<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title of the document</title>
</head>

<body>
    <video id="player" controls autoplay></video>
    <button id="capture">Capture</button>
    <canvas id="snapshot" width=320 height=240></canvas>
    <div>
    <!-- set interval -->
        <form method="POST" action="/barcode/bcdRead" enctype="application/x-www-form-urlencoded">
            <input type="text" name="file" id="image"/>
            <input type="submit" value="전송"/>
        </form>
    </div>
    <script>
        var player = document.getElementById('player');
        var snapshotCanvas = document.getElementById('snapshot');
        var captureButton = document.getElementById('capture');
        var handleSuccess = function (stream) {
            // Attach the video stream to the video element and autoplay.
            player.srcObject = stream;
        };

        captureButton.addEventListener('click', function () {
            var context = snapshot.getContext('2d');
            // Draw the video frame to the canvas.
            context.drawImage(player, 0, 0, snapshotCanvas.width,
                snapshotCanvas.height);
            document.getElementById("image").value = snapshotCanvas.toDataURL();
        });

        navigator.mediaDevices.getUserMedia({ video: true })
            .then(handleSuccess);
        
    </script>
</body>

</html>
