<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Digital Clock</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Orbitron');

        .clock-body {
            margin: 200px auto;
            height: 200px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .inner-body {
            width: 30%;
            height: 200px;
            display: flex;
            justify-content: center;
            align-items: center;
            border: 5px solid #2BC511;
            background-color: black;
            border-radius: 12px;
        }

        .clock {
            font-size: 4em;
            font-weight: 700;
            text-align: center;
            color: #2BC511;
            font-family: 'Orbitron', sans-serif;
        }

        .clock span {
            padding: 20px;
        }
    </style>
</head>
<body>
    <div class="clock-body">
        <div class="inner-body">
            <div class="clock"></div>
        </div>
    </div>

    <script>
        function tick() {
            const now = new Date();
            const h = now.getHours();
            const m = now.getMinutes();
            const s = now.getSeconds();
            
            // Format time with leading zeros
            const formattedTime = `
            <span>${h < 10 ? "0" + h : h}</span>:
            <span>${m < 10 ? "0" + m : m}</span>:
            <span>${s < 10 ? "0" + s : s}</span>`;
            
            // Update the clock display
            const clock = document.querySelector('.clock');
            clock.innerHTML = formattedTime;
        }

        // Update the clock every second
        setInterval(tick, 1000);
    </script>
</body>
</html>
