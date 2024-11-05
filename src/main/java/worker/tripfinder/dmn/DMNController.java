package worker.tripfinder.dmn;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.camunda.bpm.dmn.engine.DmnDecisionTableResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import worker.tripfinder.trip.DestinationResponse;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Map;

@RestController
@RequestMapping("/api/dmn")
public class DMNController {
    @Autowired
    private DMNService dmnService;


    @PostMapping("/{id}/execute")
    public ResponseEntity<DestinationResponse> executeDmn(@PathVariable Long id, Map<String, Object> variables) {

        String filePath = "./trip_preferences.json";

        ObjectMapper objectMapper = new ObjectMapper();
        try {
            String json = new String(Files.readAllBytes(Paths.get(filePath)));
            variables = objectMapper.readValue(json, Map.class);
            System.out.println(variables);
        } catch (Exception e) {
            e.printStackTrace();
        }

        DmnDecisionTableResult result = dmnService.executeDecision(id, variables);

        String destination = null;
        String imagePath = null;

        for (var entry : result) {
            destination = entry.getEntry("OutputDecision").toString();
            imagePath = entry.getEntry("ImagePath").toString();
        }

        return ResponseEntity.ok(new DestinationResponse(destination != null ? destination : "No destination found",
                imagePath != null ? imagePath : ""));
    }
}
