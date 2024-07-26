# Current Time in Greenwich, London, UK

<div id="clock" style="
    font-family: 'Arial', sans-serif; 
    font-size: 32px; 
    color: #4CAF50; 
    border: 2px solid #4CAF50; 
    border-radius: 8px; 
    padding: 15px; 
    width: 200px; 
    text-align: center; 
    background-color: #f0f0f0;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    margin: 20px auto;
">
    <span id="time"></span>
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
        document.getElementById('time').textContent = timeString;
    }

    setInterval(updateClock, 1000);
    updateClock();
</script>
