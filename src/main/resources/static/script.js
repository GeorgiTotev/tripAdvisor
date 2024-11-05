$(document).ready(function() {
    $('#tripForm').submit(function(e) {
        e.preventDefault();
        const selectedSeason = $("input[name='season']:checked").val(); // Get the selected season
        const selectedActivity = $("input[name='activity']:checked").val(); // Get the selected activity

        if (!selectedSeason || !selectedActivity) {
            alert("Please select both a season and an activity.");
            return;
        }

        const jsonData = JSON.stringify({
            season: selectedSeason,  // Matches Java class
            activity: selectedActivity // Matches Java class
        });

        // First AJAX request to save the trip preferences
        $.ajax({
            type: 'POST',
            url: 'http://localhost:8080/api/trips',
            contentType: 'application/json',
            data: jsonData,
            success: function(response) {
                //alert('Data saved successfully: ' + response);
                // Second AJAX request to execute DMN after saving preferences
                executeDMN(selectedSeason, selectedActivity);
            },
            error: function(xhr, status, error) {
                alert('Error saving data: ' + error);
            }
        });
    });

    function executeDMN(season, activity) {
        $.ajax({
            type: 'POST',
            url: 'http://localhost:8080/api/dmn/1/execute', // Adjust ID as needed
            contentType: 'application/json',
            data: JSON.stringify({ season: season, activity: activity }), // Send selected season and activity
            success: function(dmnResponse) {
                $('#result').html('<pre>' + dmnResponse + '</pre>'); // Display the DMN execution result
            },
            error: function(xhr, status, error) {
                alert('Error executing DMN: ' + error);
            }
        });
    }
});
