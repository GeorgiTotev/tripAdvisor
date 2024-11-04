package worker.tripfinder.dmn;

import org.camunda.bpm.dmn.engine.DmnDecisionTableResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import worker.tripfinder.dmn.DMNService;

import java.util.Map;

@RestController
@RequestMapping("/api/dmn")
public class DMNController {
    @Autowired
    private DMNService dmnService;

    @PostMapping("/{id}/execute")
    public ResponseEntity<String> executeDmn(@PathVariable Long id, @RequestBody Map<String, Object> variables) {
        DmnDecisionTableResult result = dmnService.executeDecision(id, variables);

        // Convert result to a string to send back in response
        StringBuilder resultString = new StringBuilder("DMN Execution Result:\n");
        result.forEach(entry -> resultString.append(entry.getEntryMap().toString()).append("\n"));

        return ResponseEntity.ok(resultString.toString());
    }
}
