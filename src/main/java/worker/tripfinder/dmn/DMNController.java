package worker.tripfinder.dmn;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.camunda.bpm.dmn.engine.DmnDecisionTableResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Map;

@RestController
@RequestMapping("/api/dmn")
public class DMNController {
    @Autowired
    private DMNService dmnService;


    @PostMapping("/{id}/execute")
    public ResponseEntity<String> executeDmn(@PathVariable Long id, Map<String, Object> variables) {

        String filePath = "./trip_preferences.json";

        ObjectMapper objectMapper = new ObjectMapper();
        try {
            // Parse the JSON string into a Map
            String json = new String(Files.readAllBytes(Paths.get(filePath)));
            variables = objectMapper.readValue(json, Map.class);

            // Output the filled map
            System.out.println(variables);
        } catch (Exception e) {
            e.printStackTrace();
        }

        DmnDecisionTableResult result = dmnService.executeDecision(id, variables);

        // Convert result to a string to send back in response
        StringBuilder resultString = new StringBuilder("DMN Execution Result:\n");
        result.forEach(entry -> resultString.append(entry.getEntryMap().toString()).append("\n"));

        return ResponseEntity.ok(resultString.toString());
    }
}
