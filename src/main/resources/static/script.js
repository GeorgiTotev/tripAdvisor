$(document).ready(function() {
    $('#tripForm').submit(function(e) {
        e.preventDefault();
        const selectedSeason = $("input[name='season']:checked").val(); // get season
        const selectedActivity = $("input[name='activity']:checked").val(); // get activity

        if (!selectedSeason || !selectedActivity) {
            alert("Please select both a season and an activity.");
            return;
        }

        const jsonData = JSON.stringify({
            season: selectedSeason,  // java classes should be matched here
            activity: selectedActivity
        });

        // first AJAX request to save the trip preferences
        $.ajax({
            type: 'POST',
            url: 'http://localhost:8080/api/trips',
            contentType: 'application/json',
            data: jsonData,
            beforeSend: function() {
                // show the loading spinner before request is sent
                $('#loading-spinner').show();
            },
            success: function(response) {
                // hide the loading spinner after a timeout
                setTimeout(() => {
                    $('#loading-spinner').hide();

                    console.log('Timeout is over!');
                    executeDMN(selectedSeason, selectedActivity);
                }, 2000);//2000ms
            },
            error: function(xhr, status, error) {
                // hide the loading spinner on error
                $('#loading-spinner').hide();
                alert('Error saving data: ' + error);
            }
        });


    });

    function executeDMN(season, activity) {
        $.ajax({
            type: 'POST',
            url: 'http://localhost:8080/api/dmn/1/execute',
            contentType: 'application/json',
            data: JSON.stringify({ season: season, activity: activity }),
        }).done(function(response) {
            $('#result').html('<h2>' + response.destination + '</h2>' +
                '<img src="' + response.imagePath + '" alt="' + response.destination + '" style="width:300px;height:auto;">');
        }).fail(function() {
            $('#result').html('<p>Error retrieving the trip suggestion.</p>');
        });

    }
});
