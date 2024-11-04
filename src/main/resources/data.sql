INSERT INTO DMNMODEL (name, dmn_file)
VALUES ('Decision 1',
        '<?xml version="1.0" encoding="UTF-8"?>
<definitions xmlns="https://www.omg.org/spec/DMN/20191111/MODEL/" xmlns:dmndi="https://www.omg.org/spec/DMN/20191111/DMNDI/" xmlns:dc="http://www.omg.org/spec/DMN/20180521/DC/" xmlns:di="http://www.omg.org/spec/DMN/20180521/DI/" id="Definitions_0ejedu8" name="DRD" namespace="http://camunda.org/schema/1.0/dmn" exporter="Camunda Modeler" exporterVersion="4.12.0">
  <decision id="decisionId" name="Decision Location">
    <informationRequirement id="InformationRequirement_0bnvt0k">
      <requiredInput href="#InputData_0um8k9u" />
    </informationRequirement>
    <decisionTable id="DecisionTable_178b9xz" hitPolicy="FIRST">
      <input id="Input_1" label="season">
        <inputExpression id="InputExpression_1" typeRef="string">
          <text>season</text>
        </inputExpression>
      </input>
      <output id="Output_1" label="OutputDecision" name="OutputDecision" typeRef="string" />
      <rule id="DecisionRule_1lrh7j0">
        <inputEntry id="UnaryTests_1il88sa">
          <text>"winter"</text>
        </inputEntry>
        <outputEntry id="LiteralExpression_196w8pk">
          <text>"Alps"</text>
        </outputEntry>
      </rule>
      <rule id="DecisionRule_0imhe8i">
        <inputEntry id="UnaryTests_1rboxqf">
          <text>"summer"</text>
        </inputEntry>
        <outputEntry id="LiteralExpression_1to8c2j">
          <text>"Ibiza"</text>
        </outputEntry>
      </rule>
      <rule id="DecisionRule_1oy8yre">
        <inputEntry id="UnaryTests_18tp73g">
          <text></text>
        </inputEntry>
        <outputEntry id="LiteralExpression_1fzrm3y">
          <text>"no season chosen"</text>
        </outputEntry>
      </rule>
    </decisionTable>
  </decision>
  <inputData id="InputData_0um8k9u" name="season" />
  <dmndi:DMNDI>
    <dmndi:DMNDiagram>
      <dmndi:DMNShape dmnElementRef="decisionId">
        <dc:Bounds height="80" width="180" x="160" y="80" />
      </dmndi:DMNShape>
      <dmndi:DMNShape id="DMNShape_0g52iwf" dmnElementRef="InputData_0um8k9u">
        <dc:Bounds height="45" width="125" x="187" y="217" />
      </dmndi:DMNShape>
      <dmndi:DMNEdge id="DMNEdge_0986y77" dmnElementRef="InformationRequirement_0bnvt0k">
        <di:waypoint x="250" y="217" />
        <di:waypoint x="250" y="180" />
        <di:waypoint x="250" y="160" />
      </dmndi:DMNEdge>
    </dmndi:DMNDiagram>
  </dmndi:DMNDI>
</definitions>
');

