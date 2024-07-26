# Current Time in Greenwich, London, UK

<div id="clock" style="font-family: 'Courier New', Courier, monospace; font-size: 24px; color: #333; border: 2px solid #333; padding: 10px; width: 150px; text-align: center;">
    <span id="time"></span>
</div>

<script>
    function updateClock() {
        const now = new Date();
        // Convert to GMT/UTC+0 (Greenwich Mean Time)
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

    // Update the clock every second
    setInterval(updateClock, 1000);

    // Initialize the clock on page load
    updateClock();
</script>
****
