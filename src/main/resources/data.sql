INSERT INTO DMNMODEL (name, dmn_file)
VALUES ('Decision 1',
        '' ||
        '<?xml version="1.0" encoding="UTF-8"?>
<definitions xmlns="https://www.omg.org/spec/DMN/20191111/MODEL/" xmlns:dmndi="https://www.omg.org/spec/DMN/20191111/DMNDI/" xmlns:dc="http://www.omg.org/spec/DMN/20180521/DC/" xmlns:di="http://www.omg.org/spec/DMN/20180521/DI/" xmlns:biodi="http://bpmn.io/schema/dmn/biodi/2.0" id="Definitions_0ejedu8" name="DRD" namespace="http://camunda.org/schema/1.0/dmn" exporter="Camunda Modeler" exporterVersion="4.12.0">
  <decision id="decisionId" name="Decision Location">
    <informationRequirement id="InformationRequirement_0bnvt0k">
      <requiredInput href="#InputData_0um8k9u" />
    </informationRequirement>
    <informationRequirement id="InformationRequirement_14efamm">
      <requiredInput href="#InputData_13cgx7h" />
    </informationRequirement>
    <decisionTable id="DecisionTable_178b9xz" hitPolicy="FIRST">
      <input id="Input_1" label="season" biodi:width="169.39447021484375">
        <inputExpression id="InputExpression_1" typeRef="string">
          <text>season</text>
        </inputExpression>
      </input>
      <input id="InputClause_0jo66u2" label="activity">
        <inputExpression id="LiteralExpression_1jvgg7p" typeRef="string">
          <text>activity</text>
        </inputExpression>
      </input>
      <output id="Output_1" label="OutputDecision" name="OutputDecision" typeRef="string" biodi:width="270.90826416015625" />
      <output id="OutputClause_0eyg02l" label="ImagePath" name="ImagePath" typeRef="string" />
      <rule id="DecisionRule_1lrh7j0">
        <inputEntry id="UnaryTests_1il88sa">
          <text>"Winter"</text>
        </inputEntry>
        <inputEntry id="UnaryTests_0q9bpek">
          <text>"Beach"</text>
        </inputEntry>
        <outputEntry id="LiteralExpression_196w8pk">
          <text>"Maui, Hawaii"</text>
        </outputEntry>
        <outputEntry id="LiteralExpression_0gvstsc">
          <text>"images/maui.jpg"</text>
        </outputEntry>
      </rule>
      <rule id="DecisionRule_06gux9n">
        <inputEntry id="UnaryTests_0fqfloc">
          <text>"Winter"</text>
        </inputEntry>
        <inputEntry id="UnaryTests_00afuea">
          <text>"Ski"</text>
        </inputEntry>
        <outputEntry id="LiteralExpression_14hvtap">
          <text>"Zermatt, Switzerland"</text>
        </outputEntry>
        <outputEntry id="LiteralExpression_0nqhzac">
          <text>"images/zermatt.jpg"</text>
        </outputEntry>
      </rule>
      <rule id="DecisionRule_1l5ccok">
        <inputEntry id="UnaryTests_1ridlt6">
          <text>"Winter"</text>
        </inputEntry>
        <inputEntry id="UnaryTests_1czhkwc">
          <text>"Chill"</text>
        </inputEntry>
        <outputEntry id="LiteralExpression_1xy19mr">
          <text>"Maldives"</text>
        </outputEntry>
        <outputEntry id="LiteralExpression_17lnd2n">
          <text>"images/maldives.jpg"</text>
        </outputEntry>
      </rule>
      <rule id="DecisionRule_16nm9n1">
        <inputEntry id="UnaryTests_1i4ctus">
          <text>"Winter"</text>
        </inputEntry>
        <inputEntry id="UnaryTests_0wku3oc">
          <text>"Mountain"</text>
        </inputEntry>
        <outputEntry id="LiteralExpression_1bychiu">
          <text>"Banff, Canada"</text>
        </outputEntry>
        <outputEntry id="LiteralExpression_14ukf6m">
          <text>"images/banff.jpg"</text>
        </outputEntry>
      </rule>
      <rule id="DecisionRule_0znnfe5">
        <inputEntry id="UnaryTests_1i2bhd4">
          <text>"Spring"</text>
        </inputEntry>
        <inputEntry id="UnaryTests_0sra9ao">
          <text>"Beach"</text>
        </inputEntry>
        <outputEntry id="LiteralExpression_0m8wt5z">
          <text>"Amalfi Coast, Italy"</text>
        </outputEntry>
        <outputEntry id="LiteralExpression_1rp6uy1">
          <text>"images/amalfi_coast.jpg"</text>
        </outputEntry>
      </rule>
      <rule id="DecisionRule_064hhoi">
        <inputEntry id="UnaryTests_0nxtj8p">
          <text>"Spring"</text>
        </inputEntry>
        <inputEntry id="UnaryTests_0h6jzdz">
          <text>"Ski"</text>
        </inputEntry>
        <outputEntry id="LiteralExpression_0j200dz">
          <text>"Whistler, Canada"</text>
        </outputEntry>
        <outputEntry id="LiteralExpression_0wtxtp5">
          <text>"images/whistler.jpg"</text>
        </outputEntry>
      </rule>
      <rule id="DecisionRule_0hbipob">
        <inputEntry id="UnaryTests_0xgetvs">
          <text>"Spring"</text>
        </inputEntry>
        <inputEntry id="UnaryTests_1o0ob75">
          <text>"Chill"</text>
        </inputEntry>
        <outputEntry id="LiteralExpression_1ldtex3">
          <text>"Bali, Indonesia"</text>
        </outputEntry>
        <outputEntry id="LiteralExpression_1m1kzjb">
          <text>"images/bali.jpg"</text>
        </outputEntry>
      </rule>
      <rule id="DecisionRule_04kvxu5">
        <inputEntry id="UnaryTests_1ecxn2j">
          <text>"Spring"</text>
        </inputEntry>
        <inputEntry id="UnaryTests_0tn8y8n">
          <text>"Mountain"</text>
        </inputEntry>
        <outputEntry id="LiteralExpression_17hdee8">
          <text>"Aspen, Colorado, USA"</text>
        </outputEntry>
        <outputEntry id="LiteralExpression_13iukus">
          <text>"images/aspen.jpg"</text>
        </outputEntry>
      </rule>
      <rule id="DecisionRule_0imhe8i">
        <inputEntry id="UnaryTests_1rboxqf">
          <text>"Summer"</text>
        </inputEntry>
        <inputEntry id="UnaryTests_0fpyxuc">
          <text>"Beach"</text>
        </inputEntry>
        <outputEntry id="LiteralExpression_1to8c2j">
          <text>"Ibiza"</text>
        </outputEntry>
        <outputEntry id="LiteralExpression_01lmmqy">
          <text>"images/ibiza.jpg"</text>
        </outputEntry>
      </rule>
      <rule id="DecisionRule_00bcran">
        <inputEntry id="UnaryTests_0tmqy0o">
          <text>"Summer"</text>
        </inputEntry>
        <inputEntry id="UnaryTests_096cz2g">
          <text>"Ski"</text>
        </inputEntry>
        <outputEntry id="LiteralExpression_1f2ebwt">
          <text>"Hintertux Glacier, Austria"</text>
        </outputEntry>
        <outputEntry id="LiteralExpression_1iax4ht">
          <text>"images/hintertux.jpg"</text>
        </outputEntry>
      </rule>
      <rule id="DecisionRule_0tcwqug">
        <inputEntry id="UnaryTests_1m8dp2m">
          <text>"Summer"</text>
        </inputEntry>
        <inputEntry id="UnaryTests_0dgk7hf">
          <text>"Chill"</text>
        </inputEntry>
        <outputEntry id="LiteralExpression_1m03faq">
          <text>"Santorini, Greece"</text>
        </outputEntry>
        <outputEntry id="LiteralExpression_1xyby7p">
          <text>"images/santorini.jpg"</text>
        </outputEntry>
      </rule>
      <rule id="DecisionRule_1lcd54i">
        <inputEntry id="UnaryTests_19h15oc">
          <text>"Summer"</text>
        </inputEntry>
        <inputEntry id="UnaryTests_04r4fe7">
          <text>"Mountain"</text>
        </inputEntry>
        <outputEntry id="LiteralExpression_13od6ir">
          <text>"Chamonix-Mont-Blanc, France"</text>
        </outputEntry>
        <outputEntry id="LiteralExpression_1wwe5cr">
          <text>"images/mont_blanc.jpg"</text>
        </outputEntry>
      </rule>
      <rule id="DecisionRule_1gxs0ml">
        <inputEntry id="UnaryTests_0bc3oqs">
          <text>"Autumn"</text>
        </inputEntry>
        <inputEntry id="UnaryTests_1jduqda">
          <text>"Beach"</text>
        </inputEntry>
        <outputEntry id="LiteralExpression_0c2o30b">
          <text>"Cancún, Mexico"</text>
        </outputEntry>
        <outputEntry id="LiteralExpression_0xfku4r">
          <text>"images/cancun.jpg"</text>
        </outputEntry>
      </rule>
      <rule id="DecisionRule_0pv7cnz">
        <inputEntry id="UnaryTests_00qu57b">
          <text>"Autumn"</text>
        </inputEntry>
        <inputEntry id="UnaryTests_0ictlmj">
          <text>"Ski"</text>
        </inputEntry>
        <outputEntry id="LiteralExpression_1482uam">
          <text>"Cortina d''Ampezzo, Italy"</text>
        </outputEntry>
        <outputEntry id="LiteralExpression_18r3bru">
          <text>"images/cortina.jpg"</text>
        </outputEntry>
      </rule>
      <rule id="DecisionRule_0t69lkj">
        <inputEntry id="UnaryTests_18z5zjl">
          <text>"Autumn"</text>
        </inputEntry>
        <inputEntry id="UnaryTests_1tl12gq">
          <text>"Chill"</text>
        </inputEntry>
        <outputEntry id="LiteralExpression_1jak4lm">
          <text>"Tuscany, Italy"</text>
        </outputEntry>
        <outputEntry id="LiteralExpression_1sto7pz">
          <text>"images/tuscany.jpg"</text>
        </outputEntry>
      </rule>
      <rule id="DecisionRule_1k4adu7">
        <inputEntry id="UnaryTests_1uqiccr">
          <text>"Autumn"</text>
        </inputEntry>
        <inputEntry id="UnaryTests_0c2c3h3">
          <text>"Mountain"</text>
        </inputEntry>
        <outputEntry id="LiteralExpression_1s8u0e3">
          <text>"Banff National Park, Alberta, Canada"</text>
        </outputEntry>
        <outputEntry id="LiteralExpression_0xgg29t">
          <text>"images/banff2.jpg"</text>
        </outputEntry>
      </rule>
      <rule id="DecisionRule_1oy8yre">
        <inputEntry id="UnaryTests_18tp73g">
          <text></text>
        </inputEntry>
        <inputEntry id="UnaryTests_0wibrud">
          <text></text>
        </inputEntry>
        <outputEntry id="LiteralExpression_1fzrm3y">
          <text>"no season and activity chosen"</text>
        </outputEntry>
        <outputEntry id="LiteralExpression_1wpzjc6">
          <text>""</text>
        </outputEntry>
      </rule>
    </decisionTable>
  </decision>
  <inputData id="InputData_0um8k9u" name="season" />
  <inputData id="InputData_13cgx7h" name="activity" />
  <dmndi:DMNDI>
    <dmndi:DMNDiagram>
      <dmndi:DMNShape dmnElementRef="decisionId">
        <dc:Bounds height="80" width="180" x="210" y="80" />
      </dmndi:DMNShape>
      <dmndi:DMNShape id="DMNShape_0g52iwf" dmnElementRef="InputData_0um8k9u">
        <dc:Bounds height="45" width="125" x="157" y="217" />
      </dmndi:DMNShape>
      <dmndi:DMNEdge id="DMNEdge_0986y77" dmnElementRef="InformationRequirement_0bnvt0k">
        <di:waypoint x="220" y="217" />
        <di:waypoint x="270" y="180" />
        <di:waypoint x="270" y="160" />
      </dmndi:DMNEdge>
      <dmndi:DMNShape id="DMNShape_16futzj" dmnElementRef="InputData_13cgx7h">
        <dc:Bounds height="45" width="125" x="288" y="218" />
      </dmndi:DMNShape>
      <dmndi:DMNEdge id="DMNEdge_03hghlz" dmnElementRef="InformationRequirement_14efamm">
        <di:waypoint x="351" y="218" />
        <di:waypoint x="330" y="180" />
        <di:waypoint x="330" y="160" />
      </dmndi:DMNEdge>
    </dmndi:DMNDiagram>
  </dmndi:DMNDI>
</definitions>

');

