<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Current Time in Greenwich, London, UK</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .clock-container {
            text-align: center;
            background-color: #fff;
            border: 2px solid #007bff;
            border-radius: 12px;
            padding: 20px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
            width: 250px;
        }

        .clock-container h1 {
            font-size: 24px;
            color: #007bff;
            margin: 0;
            margin-bottom: 10px;
        }

        .clock {
            font-size: 36px;
            color: #333;
            font-weight: bold;
        }

        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #666;
        }
    </style>
</head>
<body>
    <div class="clock-container">
        <h1>Current Time</h1>
        <div id="clock" class="clock">--:--:--</div>
        <div class="footer">Greenwich, London, UK</div>
    </div>

    <script>
        function updateClock() {
            const now = new Date();
            const options = {
                timeZone: 'Europe/London',
                hour: '2-digit',
                minute: '2-digit',
                second: '2-digit',
                hour12: false
            };
            const timeString = new Intl.DateTimeFormat('en-GB', options).format(now);
            document.getElementById('clock').textContent = timeString;
        }

        setInterval(updateClock, 1000);
        updateClock();
    </script>
</body>
</html>
