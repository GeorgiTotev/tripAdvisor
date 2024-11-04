package worker.tripfinder.dmn;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.FileWriter;
import java.io.IOException;

@RestController
@RequestMapping("/api")
public class TripController {

    @PostMapping("/trips")
    public ResponseEntity<String> saveTripPreferences(@RequestBody TripPreferences preferences) {
        // Convert to JSON and save to file
        ObjectMapper objectMapper = new ObjectMapper();
        try (FileWriter fileWriter = new FileWriter("trip_preferences.json")) {
            objectMapper.writeValue(fileWriter, preferences);
            return ResponseEntity.ok("Preferences saved successfully!");
        } catch (IOException e) {
            e.printStackTrace();
            return ResponseEntity.status(500).body("Failed to save preferences.");
        }
    }

    public static class TripPreferences {
        private String seasons;

        public String getSeasons() {
            return seasons;
        }

        public void setSeasons(String seasons) {
            this.seasons = seasons;
        }
    }
}
