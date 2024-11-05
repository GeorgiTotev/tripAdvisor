package worker.tripfinder.dmn;

import org.camunda.bpm.dmn.engine.DmnDecision;
import org.camunda.bpm.dmn.engine.DmnDecisionTableResult;
import org.camunda.bpm.dmn.engine.DmnEngine;
import org.camunda.bpm.dmn.engine.DmnEngineConfiguration;
import org.springframework.stereotype.Service;

import java.io.ByteArrayInputStream;
import java.util.Map;

@Service
public class DMNService {
    private final DMNModelRepository dmnRepository;
    private final DmnEngine dmnEngine;

    public DMNService(DMNModelRepository dmnRepository) {
        this.dmnRepository = dmnRepository;
        this.dmnEngine = DmnEngineConfiguration.createDefaultDmnEngineConfiguration().buildEngine();
    }

    public DmnDecisionTableResult executeDecision(Long dmnId, Map<String, Object> variables) {
        // load DMN from db
        DMNModel dmnModel = dmnRepository.findById(dmnId).orElseThrow(() -> new RuntimeException("DMN not found"));

        // parse the last table in the dmn
        DmnDecision decision = dmnEngine.parseDecision("decisionId", new ByteArrayInputStream(dmnModel.getDmnFile()));

        // eval the table with inputs
        return dmnEngine.evaluateDecisionTable(decision, variables);
    }
}
