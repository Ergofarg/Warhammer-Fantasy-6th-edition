<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="6d8e-38d9-3c69-febf" name="Warhammer Fantasy Battle 6th edition" revision="8" battleScribeVersion="2.03" authorName="Ergo Fargo" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <publications>
    <publication id="315e-e3c4-08af-fd51" name="BRB"/>
  </publications>
  <costTypes>
    <costType id="ecfa-8486-4f6c-c249" name="pts" defaultCostLimit="-1.0" hidden="false"/>
    <costType id="fcec-2340-6368-a2ba" name=" Casting Dice" defaultCostLimit="-1.0" hidden="false"/>
    <costType id="6001-b2bf-4529-c07d" name=" Dispel Dice" defaultCostLimit="-1.0" hidden="false"/>
  </costTypes>
  <profileTypes>
    <profileType id="a54a-7f00-29bf-12b1" name="Profile">
      <characteristicTypes>
        <characteristicType id="0e92-d038-82bf-fb41" name="Mv"/>
        <characteristicType id="f95b-da01-0578-3bdc" name="WS"/>
        <characteristicType id="4a8b-0c8e-3daf-7901" name="BS"/>
        <characteristicType id="b690-4bc0-bb73-267b" name="S"/>
        <characteristicType id="8712-f56f-5b22-a720" name="T"/>
        <characteristicType id="253a-9b00-4fde-8ac2" name="W"/>
        <characteristicType id="dfff-363e-f72a-5a59" name="I"/>
        <characteristicType id="6b9f-c8fe-8998-27e3" name="A"/>
        <characteristicType id="2d45-18fe-9eb3-b113" name="Ld"/>
      </characteristicTypes>
    </profileType>
    <profileType id="7889-42d9-70a0-3ea9" name="Weapon">
      <characteristicTypes>
        <characteristicType id="3107-4d1e-9a51-6564" name="Range"/>
        <characteristicType id="6fe4-1ebb-cb04-1378" name="Strength"/>
        <characteristicType id="a21a-cdc0-4b13-b236" name="Special Rules"/>
      </characteristicTypes>
    </profileType>
    <profileType id="f681-9937-db53-f1d8" name="Armour">
      <characteristicTypes>
        <characteristicType id="b600-e1ed-0765-27c1" name="Saving Throw Modifier"/>
        <characteristicType id="42c3-68ab-cfa5-203e" name="Special rules"/>
      </characteristicTypes>
    </profileType>
    <profileType id="a89b-d5a3-7805-c44e" name="Magic Items">
      <characteristicTypes>
        <characteristicType id="c7b5-c239-d6c1-0627" name="Magic stuff"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <categoryEntries>
    <categoryEntry id="d024-d25b-a9b4-73b6" name="Lord" hidden="false"/>
    <categoryEntry id="c16b-f319-2c62-2c12" name="Heroes" hidden="false"/>
    <categoryEntry id="64bf-efb4-9978-26df" name="Core" hidden="false"/>
    <categoryEntry id="43cc-fc3f-35a7-8d03" name="Special" hidden="false"/>
    <categoryEntry id="e94b-6a54-8779-cd60" name="Rare" hidden="false"/>
    <categoryEntry id="b0b1-5266-2bcd-f592" name="Detachment" hidden="false"/>
    <categoryEntry id="7a1c-d611-c2dc-def1" name="Characters" hidden="false"/>
    <categoryEntry id="0644-bfcd-32c2-21dc" name="Special Characters" hidden="false"/>
    <categoryEntry id="a37e-7207-de6d-acb0" name="General" hidden="false">
      <constraints>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="true" id="d818-c60d-b1f8-8aaa" type="max"/>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="true" id="1077-7379-f142-f382" type="min"/>
      </constraints>
    </categoryEntry>
  </categoryEntries>
  <forceEntries>
    <forceEntry id="7d9d-6c8d-4ea0-b7ad" name="Standard " hidden="false">
      <categoryLinks>
        <categoryLink id="223a-0bf6-f992-7db0" name="Lord" hidden="false" targetId="d024-d25b-a9b4-73b6" primary="false">
          <modifierGroups>
            <modifierGroup>
              <modifiers>
                <modifier type="increment" field="ffea-b24a-0cdf-781e" value="1.0">
                  <repeats>
                    <repeat field="limit::ecfa-8486-4f6c-c249" scope="roster" value="1000.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" repeats="1" roundUp="false"/>
                  </repeats>
                  <conditions>
                    <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="1999.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="greaterThan"/>
                  </conditions>
                </modifier>
                <modifier type="set" field="ffea-b24a-0cdf-781e" value="0.0">
                  <conditions>
                    <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="2000.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="lessThan"/>
                  </conditions>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <constraints>
            <constraint field="selections" scope="parent" value="-1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="ffea-b24a-0cdf-781e" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="7697-ca4b-195e-cd8d" name="Heroes" hidden="false" targetId="c16b-f319-2c62-2c12" primary="false"/>
        <categoryLink id="a87e-de8e-ade8-cae0" name="Core" hidden="false" targetId="64bf-efb4-9978-26df" primary="false">
          <modifiers>
            <modifier type="increment" field="9636-e6ed-b522-1f4a" value="1.0">
              <conditions>
                <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="1999.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="greaterThan"/>
              </conditions>
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="3000.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="lessThan"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" field="9636-e6ed-b522-1f4a" value="6.0">
              <repeats>
                <repeat field="limit::ecfa-8486-4f6c-c249" scope="roster" value="1000.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" repeats="1" roundUp="false"/>
              </repeats>
              <conditions>
                <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="4999.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="greaterThan"/>
              </conditions>
            </modifier>
            <modifier type="set" field="9636-e6ed-b522-1f4a" value="4.0">
              <conditions>
                <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="2999.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="greaterThan"/>
              </conditions>
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="4000.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="lessThan"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" field="9636-e6ed-b522-1f4a" value="5.0">
              <conditions>
                <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="3999.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="greaterThan"/>
              </conditions>
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="5000.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="lessThan"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="roster" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="9636-e6ed-b522-1f4a" type="min"/>
          </constraints>
        </categoryLink>
        <categoryLink id="35fe-76ab-1547-66f3" name="Special" hidden="false" targetId="43cc-fc3f-35a7-8d03" primary="false">
          <modifiers>
            <modifier type="set" field="32a8-c5ab-9c08-b656" value="3.0">
              <conditions>
                <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="2000.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="model" type="lessThan"/>
              </conditions>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup>
              <modifiers>
                <modifier type="increment" field="32a8-c5ab-9c08-b656" value="1.0">
                  <repeats>
                    <repeat field="limit::ecfa-8486-4f6c-c249" scope="roster" value="1000.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" repeats="1" roundUp="false"/>
                  </repeats>
                  <conditions>
                    <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="1999.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="greaterThan"/>
                  </conditions>
                </modifier>
                <modifier type="set" field="32a8-c5ab-9c08-b656" value="4.0">
                  <conditions>
                    <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="1999.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="greaterThan"/>
                  </conditions>
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="3000.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="lessThan"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <constraints>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="32a8-c5ab-9c08-b656" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="aa64-c672-9ef8-b6f7" name="Rare" hidden="false" targetId="e94b-6a54-8779-cd60" primary="false">
          <modifiers>
            <modifier type="set" field="6167-0493-f2af-4b0a" value="1.0">
              <conditions>
                <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="2000.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="lessThan"/>
              </conditions>
            </modifier>
          </modifiers>
          <modifierGroups>
            <modifierGroup>
              <modifiers>
                <modifier type="increment" field="6167-0493-f2af-4b0a" value="1.0">
                  <repeats>
                    <repeat field="limit::ecfa-8486-4f6c-c249" scope="roster" value="1000.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" repeats="1" roundUp="false"/>
                  </repeats>
                  <conditions>
                    <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="1999.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="greaterThan"/>
                  </conditions>
                </modifier>
                <modifier type="set" field="6167-0493-f2af-4b0a" value="2.0">
                  <conditions>
                    <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="1999.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="greaterThan"/>
                  </conditions>
                  <conditionGroups>
                    <conditionGroup type="and">
                      <conditions>
                        <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="3000.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="lessThan"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <constraints>
            <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6167-0493-f2af-4b0a" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="1a43-0c1d-6a51-d2af" name="Characters" hidden="false" targetId="7a1c-d611-c2dc-def1" primary="false">
          <modifiers>
            <modifier type="set" field="9ecc-0180-3f98-d6c2" value="3.0">
              <conditions>
                <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="2000.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="lessThan"/>
              </conditions>
            </modifier>
            <modifier type="set" field="9ecc-0180-3f98-d6c2" value="4.0">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="3000.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="lessThan"/>
                    <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="1999.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="greaterThan"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" field="9ecc-0180-3f98-d6c2" value="0.0">
              <conditions>
                <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="2999.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="greaterThan"/>
              </conditions>
            </modifier>
            <modifier type="increment" field="9ecc-0180-3f98-d6c2" value="2.0">
              <repeats>
                <repeat field="limit::ecfa-8486-4f6c-c249" scope="roster" value="1000.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" repeats="1" roundUp="false"/>
              </repeats>
              <conditions>
                <condition field="limit::ecfa-8486-4f6c-c249" scope="roster" value="2999.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="greaterThan"/>
              </conditions>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="parent" value="-1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="9ecc-0180-3f98-d6c2" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="30d2-fdcf-80db-31b5" name="Special Characters" hidden="false" targetId="0644-bfcd-32c2-21dc" primary="false"/>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
  <sharedSelectionEntries>
    <selectionEntry id="e9ad-f1ce-aebf-6d23" name="Battle Standard Bearer" publicationId="315e-e3c4-08af-fd51" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="082b-067c-b983-c393" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="01a5-106d-f6e8-560b" type="max"/>
      </constraints>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="25.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="b76c-6bad-4650-dbb0" name="Dispel Scroll" publicationId="315e-e3c4-08af-fd51" page="154" hidden="false" collective="false" import="true" type="upgrade">
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="25.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="c5c1-60aa-745f-c9d3" name="Enchanted Shield" publicationId="315e-e3c4-08af-fd51" page="154" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c431-9ff6-be7b-5106" type="max"/>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d44d-4746-8090-bae0" type="max"/>
      </constraints>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="10.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="0ed5-eacf-d55a-5e9e" name="Power Stone" publicationId="315e-e3c4-08af-fd51" page="154" hidden="false" collective="false" import="true" type="upgrade">
      <selectionEntries>
        <selectionEntry id="696a-648d-c842-4c6a" name="Power Stones" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="4.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="e44e-74a9-e4a4-6939" type="max"/>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2041-7b18-f68a-41a7" type="min"/>
          </constraints>
          <costs>
            <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="25.0"/>
            <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
            <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="b22a-6be5-d4f9-7776" name="Staff of Sorcery" publicationId="315e-e3c4-08af-fd51" page="154" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="097e-f756-67e6-9b20" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="eed4-81a0-979b-ef01" type="max"/>
      </constraints>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="50.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="c7cc-76a3-c413-ddb8" name="Talisman of Protection" publicationId="315e-e3c4-08af-fd51" page="154" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="abf4-8083-375a-96fb" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="82b4-9259-cadd-77c8" type="max"/>
      </constraints>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="15.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="f327-567f-ef99-0403" name="War Banner" publicationId="315e-e3c4-08af-fd51" page="154" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="2f29-db1a-55bc-393e" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="b30d-1552-9e2a-1eb3" type="max"/>
      </constraints>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="25.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="74fc-c90b-250e-6b87" name="Biting Blade" publicationId="315e-e3c4-08af-fd51" page="154" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="bf1b-d4a5-ad56-80f3" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="950e-6cb6-1db3-271f" type="max"/>
      </constraints>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="10.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="6e5a-eeea-ec67-3632" name="Sword of Battle" publicationId="315e-e3c4-08af-fd51" page="154" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="dad1-d33d-0d59-269d" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="def8-a287-2e97-8274" type="max"/>
      </constraints>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="25.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="8c56-9be1-c4a9-5afe" name="Sword of Might" publicationId="315e-e3c4-08af-fd51" page="154" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="3e58-33a7-788f-7fc7" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="e40b-b4c1-ed22-82cc" type="max"/>
      </constraints>
      <profiles>
        <profile id="c9ca-e793-d620-9f47" name="Sword of Might" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
          <characteristics>
            <characteristic name="Range" typeId="3107-4d1e-9a51-6564">cc</characteristic>
            <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378">User +1 S</characteristic>
            <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236">Adds +1 Strength</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="20.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="6b55-e847-311d-d6ca" name="Sword of Striking" publicationId="315e-e3c4-08af-fd51" page="154" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="a9bb-1a01-1d6f-c689" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="f890-1c46-6d14-1589" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="ee72-3b3a-b08d-77df" name="Sword of Striking" hidden="false" targetId="bc68-6c48-02d1-3ce4" type="rule"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="30.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="dde4-0ba8-7b3c-57b7" name="Heavy Armour" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="daf1-0894-5daa-68a0" name="Heavy Armour" hidden="false" targetId="3dd5-f228-98a7-453a" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="055f-8e4e-f170-35d2" name="Light Armour" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6f1a-1be1-6660-d9a6" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="f2be-deda-47fa-b33a" name="Light Armour" hidden="false" targetId="752a-95b9-343a-8f75" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="50e2-1873-a856-03e7" name="Shield" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="1fd7-1522-9de7-77fa" name="Shield" hidden="false" targetId="3d79-7984-991a-8b67" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="8649-8ac8-5a6f-fd8d" name="Lance" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="f3d0-c83a-899e-f4e6" name="Lance" hidden="false" targetId="a15a-0123-6693-7a50" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="1eb7-3f36-8cf7-e0ba" name="Great Weapon" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="38c9-2702-5d98-b2ad" name="Great Weapon" hidden="false" targetId="97d4-ed3b-5f76-5a23" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="36a8-7bbb-d204-0314" name="Two Hand Weapons" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="ca7b-eae8-e28b-4f0c" name="Additional Hand weapon" hidden="false" targetId="72aa-da68-2dae-4ab6" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="b3f3-a133-2869-0be8" name="Halberds" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="8f97-e6f6-fada-7570" name="Halberd" hidden="false" targetId="3596-7d17-9ca2-fb92" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="3211-d836-02f1-01d0" name="Barding" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="4985-823b-e965-35fe" name="Barding" hidden="false" targetId="25e4-8f3a-a1a8-a7b6" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="abdb-bbd0-41b2-5dff" name="Hand Weapon" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="1091-5b16-bd29-c7f0" name="Hand Weapon" hidden="false" targetId="5556-38ea-b278-4a8f" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="104f-5817-4bda-9382" name="Spear Infantry" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="3fbf-2e63-d6b2-91e9" name="Spears (Infantry)" hidden="false" targetId="222b-1e29-9d24-09d7" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="027b-31d2-b3e2-23a4" name="Spear (Mounted)" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="e839-3916-b0b1-8c7b" name="Spear (Mounted)" hidden="false" targetId="ec7d-fa6d-d0f6-5589" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="f920-04d5-06c0-c2c9" name="Long Bow" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="bc72-2992-eb53-aaa9" name="Long Bow" hidden="false" targetId="67c1-cca3-76a7-0667" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="3428-8f18-865a-44cd" name="Short Bow" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="e7a8-64ce-c0d4-68d6" name="Short Bow" hidden="false" targetId="5e53-1e3a-3e8e-22b2" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="44f9-f44d-d693-84f8" name="Pistol" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="0c60-f0b1-4814-53c2" name="Pistol" hidden="false" targetId="e6ab-509a-9826-7080" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="9efb-2b02-f245-62f5" name="Bow" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="cddf-4c47-291f-1bab" name="Bow" hidden="false" targetId="ec76-323e-c09d-eae4" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="4c50-49fe-7ac2-4b3b" name="Crossbow" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="4f1e-39c2-0117-02e3" name="Crossbow" hidden="false" targetId="1979-9085-40d4-adee" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="fe39-7a3b-c3ed-67f8" name="Handgun" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="0d37-a8b4-460f-3b3d" name="Handgun" hidden="false" targetId="4ce2-acff-b3af-72fd" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="ca1c-a42a-c387-2cb2" name="Sling" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="65bd-c924-1ed5-7830" name="Sling" hidden="false" targetId="67a2-04c0-f8fb-7741" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="bddd-26a2-7b14-c3fa" name="Throwing Axe" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="d01e-a5d1-b9be-69ec" name="Throwing Axe" hidden="false" targetId="c4c3-8f22-9db7-1a00" type="profile"/>
        <infoLink id="ef9e-e592-d413-0c53" name="Thrown Weapons" hidden="false" targetId="eecc-4ed0-db8a-f6dc" type="rule"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="6c61-37b0-5fa6-c20c" name="Throwing Star/ Knife" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="d76f-ae3e-98ae-7a6d" name="Throwing Star/ Knife" hidden="false" targetId="9c9b-f589-846f-c1d8" type="profile"/>
        <infoLink id="160d-d464-ad1f-b955" name="Thrown Weapons" hidden="false" targetId="eecc-4ed0-db8a-f6dc" type="rule"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="2eb9-be12-caec-57e8" name="Flail" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="fe8f-7914-842b-138e" name="Flail" hidden="false" targetId="10f8-e196-d180-044c" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="f2fb-8b67-9f3b-a096" name="Morning Star" hidden="false" collective="false" import="true" type="upgrade">
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="bd00-7ec3-0e5b-0d52" name="Brace Of Pistols" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="3854-bcd0-2619-e868" name="Brace Of Pistols" hidden="false" targetId="e5ce-0262-e817-adc2" type="rule"/>
        <infoLink id="8257-bdb1-5d78-797b" name="Pistol" hidden="false" targetId="e6ab-509a-9826-7080" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="1b7c-2c90-6d96-28c9" name="General" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5b30-f604-aa3b-1c34" type="max"/>
      </constraints>
      <categoryLinks>
        <categoryLink id="b6a9-2d67-cff3-dde7" name="General" hidden="false" targetId="a37e-7207-de6d-acb0" primary="false"/>
      </categoryLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="2.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="2.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="5f8c-ee59-3060-16c4" name="Javelin" hidden="false" collective="false" import="true" type="upgrade">
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="d59b-907c-2f4c-d3ba" name="1. Rule of Burning Iron" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a850-e4e9-5808-e870" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="9ce7-d7cd-8d96-7936" name="Rule of Burning Iron" hidden="false" targetId="2b48-77b8-4869-a2e0" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="b57b-166c-56a2-5e5b" name="2. Commandment of Brass" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f59a-6e0c-d8f0-fad7" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="a5a3-e839-6553-5454" name="Commandment of Brass" hidden="false" targetId="3d8c-0ee2-bef1-198b" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="ed50-2d0e-ab7d-667c" name="3. Transmutation of Lead" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b5cd-880d-7049-e7f0" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="0d59-afc2-3a2f-5f7c" name="Transmutation of Lead" hidden="false" targetId="d466-c2b4-bd9f-71a8" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="68c6-3f2e-f911-8161" name="4. Distillation of Molten Silver" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1453-da80-0839-22c9" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="851b-8bc0-0652-5a25" name="Distillation of Molten Silver" hidden="false" targetId="1715-681f-b7db-4e39" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="c13c-300b-9487-3f74" name="6. Bane of Forged Steel" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c35f-e0dd-279e-6383" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="d9d1-686f-5376-19bf" name="Bane of Forged Steel" hidden="false" targetId="985a-72ac-2e14-3b5f" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="4006-d946-219d-5971" name="5. Law of Gold" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7a9c-b2a0-d87e-7e33" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="7ee4-ed23-c04f-d591" name="Law of Gold" hidden="false" targetId="b86b-76e0-fb70-f50e" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="150a-d6ec-5f11-2985" name="1. Fire Ball" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="04ec-77bd-6ce3-d5b5" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="3545-f8b1-e8de-7f69" name="Fire Ball" hidden="false" targetId="e4f3-ac8c-8f42-8bad" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="9cec-221d-f360-3259" name="2. Flaming Sword of Rhuin" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3e96-8e51-a4e6-83bd" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="a584-4bd8-b008-799b" name="Flaming Sword of Rhuin" hidden="false" targetId="5966-5043-5145-9614" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="d1c8-037f-dbe0-6c38" name="3. Fiery Blast" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="e5ba-504a-462a-30c1" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="6082-f1a9-5693-2265" name="Fiery Blast" hidden="false" targetId="4b81-3009-c4e1-78ad" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="a023-13b1-9ea9-2911" name="4. Burning Head" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4881-3035-a61d-58c4" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="48b8-96cf-5777-7235" name="Burning Head" hidden="false" targetId="df54-651f-c86b-1145" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="d4ed-bb3e-88ad-83ac" name="5. Conflagration of Doom" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="54db-391d-fb14-4fb8" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="0f0c-74bd-5155-74de" name="Conflagration of Doom" hidden="false" targetId="089b-2891-1e73-cfcb" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="11ff-c209-6eca-a620" name="6. Wall of Fire" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5ff2-973d-abc9-7e07" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="cbb0-1124-5ca0-8d95" name="Wall of Fire" hidden="false" targetId="6e31-6e0d-1f0b-6881" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="537f-b5b1-470e-0f8c" name="1. Steed of Shadows" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2c29-f0fb-774d-b115" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="7975-efa8-3d47-3e49" name="Steed of Shadows" hidden="false" targetId="7d9a-67cc-3fbe-e93e" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="9a62-51f6-002a-00b2" name="2. Creeping Death" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="cec7-df75-7947-6ce7" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="79e4-6f6b-ebbb-a8f6" name="Creeping Death" hidden="false" targetId="3b5a-e19c-52db-18cd" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="97af-72ed-e697-0648" name="3. Pelt of Midnight" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0ff8-c86b-d576-bdb8" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="ef69-066b-ea17-fcf3" name="Pelt of Midnight" hidden="false" targetId="d735-a9bb-17d2-820b" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="f072-44e3-c0b5-64f2" name="4. Shades of Death" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="005d-7487-f4e7-7efa" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="de51-c7cc-afb8-702c" name="Shades of Death" hidden="false" targetId="4f37-9562-182c-b68d" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="9675-742b-de42-9f88" name="5. Unseen Lurker" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="69a2-ea30-23ea-e7a6" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="d58a-79ad-f933-e083" name="Unseen Lurker" hidden="false" targetId="24b4-c91c-163d-a7de" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="892c-7bf1-9202-66fe" name="6. Pit of Shades" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7119-81d0-c06d-a2f8" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="f59c-7d2d-cdcf-cb01" name="Pit of Shades" hidden="false" targetId="f18a-e90b-4ecd-066a" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="3dd9-8115-89cc-09b1" name="1. The Oxen Stands" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5f3e-886f-a06e-45b4" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="5587-45df-13e7-52cb" name="The Oxen Stands" hidden="false" targetId="986a-0c00-d0d0-6dda" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="4509-6f7c-4256-7738" name="2. The Eagle&apos;s Cry" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="fcb1-6fb0-2403-f672" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="0892-620d-41b3-e781" name="The Eagle&apos;s Cry" hidden="false" targetId="d67c-9fdd-1e8a-1920" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="30dc-8139-8649-5b3c" name="3. The Bear&apos;s Anger" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3871-12e1-4ef9-3409" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="969e-63b2-5d58-d66f" name="The Bear&apos;s Anger" hidden="false" targetId="c438-f773-fd61-8dc1" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="d2bf-fafb-6506-c1e0" name="4. The Crow&apos;s Feast" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2b4d-60e0-134f-3253" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="75f7-b281-0cc7-4f67" name="The Crow&apos;s Feast" hidden="false" targetId="3996-f9dd-f0b9-a860" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="2897-a205-532b-b379" name="5. The Beast Cowers" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4cbe-3cc2-67a1-6e49" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="a654-0465-d247-2a06" name="The Beast Cowers" hidden="false" targetId="c761-7b61-ad6f-3a78" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="8a75-3157-3b27-00c8" name="6. The Wolf Hunts" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="13f8-b853-2100-7a41" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="6f9c-5452-5ba6-57c4" name="Fire Ball" hidden="false" targetId="e4f3-ac8c-8f42-8bad" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="65ea-6de9-feef-d9ab" name="1. Second Sign of Amul (Revised)" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c25a-15f4-1d03-c173" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="c437-03c1-a1db-d348" name="Second Sign of Amul " hidden="false" targetId="4658-e70b-b8ef-673e" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="2654-cc55-e4ed-c6de" name="2. Portent of Far" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1410-ba4f-ce25-c81e" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="1a8f-29f5-75ee-9be7" name="Portent of Far" hidden="false" targetId="6508-46ac-2741-0173" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="069e-af7b-a374-e7d1" name="3. Forked Lightning (Revised)" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f287-d509-5340-47b9" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="d831-cf56-01c0-89a9" name="Forked Lightning (Revised)" hidden="false" targetId="867b-330c-80f2-ed86" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="b037-4dfb-ff68-4a17" name="4. Uranon&apos;s Thunder Bolt (Revised)" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="fd8c-365e-4772-3824" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="d1ad-f783-b4ad-bf29" name="Uranon&apos;s Thunder Bolt (Revised)" hidden="false" targetId="5290-687f-3b11-d9dd" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="feec-7048-9a35-7156" name="5. Storm of Cronos" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="aff5-730e-a5a0-da16" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="c4e9-878a-0687-df29" name="Storm of Cronos" hidden="false" targetId="2530-d828-3c0d-f0db" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="aa1c-07f8-7974-58a2" name="6. The Comet of Casandora (Revised)" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="526f-6040-6b71-5add" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="421f-761a-b516-e647" name="The Comet of Casandora (Revised)" hidden="false" targetId="fbf7-a711-49c2-cb2c" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="63d1-ef97-c0df-b585" name="1. Pha&apos;s Illumination" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="70c7-0ea3-0de5-5893" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="ee98-8eac-79cd-1b83" name="Pha&apos;s Illumination" hidden="false" targetId="d187-4b56-6442-ebf4" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="90bf-20c9-f1ba-5a0e" name="2. Burning Gaze" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="01a8-5713-7b6f-5cf1" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="1f93-3a63-9b45-e3ac" name="Burning Gaze" hidden="false" targetId="0c87-73f2-590b-eaa0" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="4d4d-fa3f-11ad-5668" name="3. Dazzling Brightness" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="87d7-3a51-c344-ebed" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="b5e7-df71-e35e-2a33" name="Dazzling Brightness" hidden="false" targetId="20dd-4bae-11fd-55da" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="29bf-902a-0124-ca4e" name="4. Healing Hand" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1cc5-2b59-ffc0-a6aa" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="057d-71d7-7c0e-6c54" name="Healing Hand" hidden="false" targetId="1e22-d345-bdc3-e388" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="bfa2-d809-b32e-0a8d" name="5. Guardian Light" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3a09-9fd1-be37-8e96" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="9a1c-d577-5576-414e" name="Guardian Light" hidden="false" targetId="15d0-4e9d-66ad-ed78" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="d062-d04d-4a9a-80ba" name="6. Blinding Light" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="77e6-4ccf-59a8-3d85" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="827e-dfd1-be73-0bd3" name="Blinding Light" hidden="false" targetId="30d3-53c0-a560-fc59" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="e0a5-6a7f-7f36-e20a" name="1. Mistress of the Marsh (Revised)" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="9a02-8f03-e16a-a1f4" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="7492-ac69-7e68-1049" name="Mistress of the Marsh (Revised)" hidden="false" targetId="80ab-6727-9b71-e68b" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="1fce-a14a-7f86-df52" name="2. Father of the Thorn (Revised)" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="14df-9ae5-2fbe-cf51" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="9b9e-d228-fec9-fee6" name="Father of the Thorn (Revised)" hidden="false" targetId="2eb5-7b79-ffdc-e083" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="a6b3-a694-3d00-834b" name="3. The Howler Wind (Revised)" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f197-4395-20be-8b7c" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="c8cd-3fb9-977f-796e" name="The Howler Wind (Revised)" hidden="false" targetId="004f-b7a6-35f6-c02b" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="f2e1-bc50-38be-23a7" name="4. Master of the Wood (Revised)" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="26cb-9e68-2eed-0856" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="65d1-d14c-31fc-9586" name="Master of the Wood (Revised)" hidden="false" targetId="5c6d-2bfa-f852-ef3e" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="eaa9-cd7d-6f50-c08f" name="5. Master of Stone (Revised)" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="614f-2f8b-fa69-35b5" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="e948-3650-b8d7-303e" name="Master of Stone (Revised)" hidden="false" targetId="b4ce-3b5b-94c6-489f" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="5ae2-e2a8-98e8-0f48" name="6. The Rain Lord (Revised)" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3605-e97b-c5b9-84e0" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="0a04-1652-ca8c-970c" name="The Rain Lord (Revised)" hidden="false" targetId="25d4-a1f2-0794-a39f" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="efe4-4420-d452-e5d9" name="1. Dark Hand of Death" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="ee1b-e92b-47a1-23c5" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="6148-17d4-0b86-f228" name="Dark Hand of Death" hidden="false" targetId="9fe7-c1dc-0e19-0809" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="8e66-0525-12dc-b656" name="2. Death Dealer" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a925-e6d8-99ff-e3d6" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="69f5-0420-3661-4128" name="Death Dealer" hidden="false" targetId="d48a-a61b-34d8-50d0" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="fc96-a2a4-56f2-70c3" name="3. Steal Soul" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4c3b-6f17-1b4c-7ae5" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="fcac-d994-6b29-e605" name="Steal Soul" hidden="false" targetId="04eb-7e9d-1a5d-cd4b" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="ffdd-5119-cffe-f85a" name="4. Wind of Death" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="103b-1958-f464-3096" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="c06e-48b1-2241-8f2d" name="Wind of Death" hidden="false" targetId="bac7-c263-d173-ac75" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="d54f-1c26-3dff-6094" name="5. Drain Life" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3d0e-6a34-c415-53ec" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="e282-6681-3c0b-84bb" name="Drain Life" hidden="false" targetId="a171-3bf1-5423-ee49" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="7caf-d4f2-8210-fa58" name="6. Doom and Darkness!" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2b93-15c7-a355-0014" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="840a-5b92-d362-a6e3" name="Doom and Darkness!" hidden="false" targetId="ea42-2df2-f47b-3578" type="rule"/>
      </infoLinks>
      <costs>
        <cost name=" Casting Dice" typeId="fcec-2340-6368-a2ba" value="0.0"/>
        <cost name=" Dispel Dice" typeId="6001-b2bf-4529-c07d" value="0.0"/>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
  </sharedSelectionEntries>
  <sharedSelectionEntryGroups>
    <selectionEntryGroup id="f679-dff7-370a-6050" name="Lore of Metal" hidden="false" collective="false" import="true">
      <entryLinks>
        <entryLink id="8962-bf7d-b57b-33d9" name="1. Rule of Burning Iron" hidden="false" collective="false" import="true" targetId="d59b-907c-2f4c-d3ba" type="selectionEntry"/>
        <entryLink id="ca90-5da0-e868-c48c" name="2. Commandment of Brass" hidden="false" collective="false" import="true" targetId="b57b-166c-56a2-5e5b" type="selectionEntry"/>
        <entryLink id="87a9-5ea7-d41a-37e1" name="3. Transmutation of Lead" hidden="false" collective="false" import="true" targetId="ed50-2d0e-ab7d-667c" type="selectionEntry"/>
        <entryLink id="f3ad-dccd-edf4-f8a0" name="4. Distillation of Molten Silver" hidden="false" collective="false" import="true" targetId="68c6-3f2e-f911-8161" type="selectionEntry"/>
        <entryLink id="3fb6-589b-969a-cd02" name="5. Law of Gold" hidden="false" collective="false" import="true" targetId="4006-d946-219d-5971" type="selectionEntry"/>
        <entryLink id="1e42-9bd3-76c7-17b8" name="6. Bane of Forged Steel" hidden="false" collective="false" import="true" targetId="c13c-300b-9487-3f74" type="selectionEntry"/>
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="ffc0-ed2b-71f0-b61c" name="Lore of Fire" hidden="false" collective="false" import="true">
      <entryLinks>
        <entryLink id="6023-4b87-86cd-a394" name="1. Fire Ball" hidden="false" collective="false" import="true" targetId="150a-d6ec-5f11-2985" type="selectionEntry"/>
        <entryLink id="cbbe-57c7-4853-9983" name="2. Flaming Sword of Rhuin" hidden="false" collective="false" import="true" targetId="9cec-221d-f360-3259" type="selectionEntry"/>
        <entryLink id="c72e-20a7-8444-c26e" name="3. Fiery Blast" hidden="false" collective="false" import="true" targetId="d1c8-037f-dbe0-6c38" type="selectionEntry"/>
        <entryLink id="738b-ee19-4889-7399" name="4. Burning Head" hidden="false" collective="false" import="true" targetId="a023-13b1-9ea9-2911" type="selectionEntry"/>
        <entryLink id="cb78-1ee5-eee6-fb74" name="5. Conflagration of Doom" hidden="false" collective="false" import="true" targetId="d4ed-bb3e-88ad-83ac" type="selectionEntry"/>
        <entryLink id="7f75-868e-91f5-42c4" name="6. Wall of Fire" hidden="false" collective="false" import="true" targetId="11ff-c209-6eca-a620" type="selectionEntry"/>
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="b0de-c735-e115-5c82" name="Lore of Shadow" hidden="false" collective="false" import="true">
      <entryLinks>
        <entryLink id="5287-c0cb-03f1-3475" name="1. Steed of Shadows" hidden="false" collective="false" import="true" targetId="537f-b5b1-470e-0f8c" type="selectionEntry"/>
        <entryLink id="afa5-9794-2286-4c8e" name="2. Creeping Death" hidden="false" collective="false" import="true" targetId="9a62-51f6-002a-00b2" type="selectionEntry"/>
        <entryLink id="39d0-a12c-20c9-90aa" name="3. Pelt of Midnight" hidden="false" collective="false" import="true" targetId="97af-72ed-e697-0648" type="selectionEntry"/>
        <entryLink id="07d7-c4f5-f622-d31b" name="4. Shades of Death" hidden="false" collective="false" import="true" targetId="f072-44e3-c0b5-64f2" type="selectionEntry"/>
        <entryLink id="6a98-f9bd-ab6c-1e56" name="5. Unseen Lurker" hidden="false" collective="false" import="true" targetId="9675-742b-de42-9f88" type="selectionEntry"/>
        <entryLink id="652e-ef44-16e3-ca1f" name="6. Pit of Shades" hidden="false" collective="false" import="true" targetId="892c-7bf1-9202-66fe" type="selectionEntry"/>
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="892e-a8dd-8f70-373a" name="Lore of Beasts" hidden="false" collective="false" import="true">
      <entryLinks>
        <entryLink id="9313-9ff3-ec86-b986" name="1. The Oxen Stands" hidden="false" collective="false" import="true" targetId="3dd9-8115-89cc-09b1" type="selectionEntry"/>
        <entryLink id="95d8-3403-4d63-6262" name="2. The Eagle&apos;s Cry" hidden="false" collective="false" import="true" targetId="4509-6f7c-4256-7738" type="selectionEntry"/>
        <entryLink id="8cde-f726-7945-8e09" name="3. The Bear&apos;s Anger" hidden="false" collective="false" import="true" targetId="30dc-8139-8649-5b3c" type="selectionEntry"/>
        <entryLink id="d2ee-c824-1234-63e5" name="4. The Crow&apos;s Feast" hidden="false" collective="false" import="true" targetId="d2bf-fafb-6506-c1e0" type="selectionEntry"/>
        <entryLink id="9a6e-e2e1-183f-8838" name="5. The Beast Cowers" hidden="false" collective="false" import="true" targetId="2897-a205-532b-b379" type="selectionEntry"/>
        <entryLink id="50c1-f00b-e2a4-b0d5" name="6. The Wolf Hunts" hidden="false" collective="false" import="true" targetId="8a75-3157-3b27-00c8" type="selectionEntry"/>
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="e999-4d26-ec27-9cd0" name="Lore of Heavens" hidden="false" collective="false" import="true">
      <entryLinks>
        <entryLink id="3cfc-55ff-a1a1-8b56" name="1. Second Sign of Amul (Revised)" hidden="false" collective="false" import="true" targetId="65ea-6de9-feef-d9ab" type="selectionEntry"/>
        <entryLink id="e232-7757-f8d7-8b7a" name="2. Portent of Far" hidden="false" collective="false" import="true" targetId="2654-cc55-e4ed-c6de" type="selectionEntry"/>
        <entryLink id="0522-5ccc-fd5b-e077" name="3. Forked Lightning (Revised)" hidden="false" collective="false" import="true" targetId="069e-af7b-a374-e7d1" type="selectionEntry"/>
        <entryLink id="1083-23df-3a2f-5fda" name="4. Uranon&apos;s Thunder Bolt (Revised)" hidden="false" collective="false" import="true" targetId="b037-4dfb-ff68-4a17" type="selectionEntry"/>
        <entryLink id="62a5-a914-9436-b601" name="5. Storm of Cronos" hidden="false" collective="false" import="true" targetId="feec-7048-9a35-7156" type="selectionEntry"/>
        <entryLink id="8be8-74d0-2823-d9c7" name="6. The Comet of Casandora (Revised)" hidden="false" collective="false" import="true" targetId="aa1c-07f8-7974-58a2" type="selectionEntry"/>
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="f6d6-76c8-90fe-ac07" name="Lore of Light" hidden="false" collective="false" import="true">
      <entryLinks>
        <entryLink id="5fc2-e709-fd0a-7032" name="1. Pha&apos;s Illumination" hidden="false" collective="false" import="true" targetId="63d1-ef97-c0df-b585" type="selectionEntry"/>
        <entryLink id="843d-64ef-ccf3-9c8d" name="2. Burning Gaze" hidden="false" collective="false" import="true" targetId="90bf-20c9-f1ba-5a0e" type="selectionEntry"/>
        <entryLink id="dc68-fa81-a284-080d" name="3. Dazzling Brightness" hidden="false" collective="false" import="true" targetId="4d4d-fa3f-11ad-5668" type="selectionEntry"/>
        <entryLink id="e855-e49b-b470-ab3f" name="4. Healing Hand" hidden="false" collective="false" import="true" targetId="29bf-902a-0124-ca4e" type="selectionEntry"/>
        <entryLink id="c300-16fc-8682-36d5" name="5. Guardian Light" hidden="false" collective="false" import="true" targetId="bfa2-d809-b32e-0a8d" type="selectionEntry"/>
        <entryLink id="99f5-d35f-3a44-1564" name="6. Blinding Light" hidden="false" collective="false" import="true" targetId="d062-d04d-4a9a-80ba" type="selectionEntry"/>
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="7814-b731-32d8-88be" name="Lore of Life" hidden="false" collective="false" import="true">
      <entryLinks>
        <entryLink id="68fc-1a1b-4523-ee15" name="1. Mistress of the Marsh (Revised)" hidden="false" collective="false" import="true" targetId="e0a5-6a7f-7f36-e20a" type="selectionEntry"/>
        <entryLink id="af57-c92b-3be2-ca9c" name="2. Father of the Thorn (Revised)" hidden="false" collective="false" import="true" targetId="1fce-a14a-7f86-df52" type="selectionEntry"/>
        <entryLink id="06f0-82d9-8471-6869" name="3. The Howler Wind (Revised)" hidden="false" collective="false" import="true" targetId="a6b3-a694-3d00-834b" type="selectionEntry"/>
        <entryLink id="6bea-1ebc-0272-d696" name="4. Master of the Wood (Revised)" hidden="false" collective="false" import="true" targetId="f2e1-bc50-38be-23a7" type="selectionEntry"/>
        <entryLink id="04d0-ebce-f89c-30af" name="5. Master of Stone (Revised)" hidden="false" collective="false" import="true" targetId="eaa9-cd7d-6f50-c08f" type="selectionEntry"/>
        <entryLink id="7263-7d09-53ce-a30d" name="6. The Rain Lord (Revised)" hidden="false" collective="false" import="true" targetId="5ae2-e2a8-98e8-0f48" type="selectionEntry"/>
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="0a76-fdab-0afb-3612" name="Lore of Death" hidden="false" collective="false" import="true">
      <entryLinks>
        <entryLink id="1388-0294-a21b-5913" name="1. Dark Hand of Death" hidden="false" collective="false" import="true" targetId="efe4-4420-d452-e5d9" type="selectionEntry"/>
        <entryLink id="4509-a68e-e7a1-56f6" name="2. Death Dealer" hidden="false" collective="false" import="true" targetId="8e66-0525-12dc-b656" type="selectionEntry"/>
        <entryLink id="f8e9-151d-7ce2-f0bb" name="3. Steal Soul" hidden="false" collective="false" import="true" targetId="fc96-a2a4-56f2-70c3" type="selectionEntry"/>
        <entryLink id="7c24-5c21-33a9-4434" name="4. Wind of Death" hidden="false" collective="false" import="true" targetId="ffdd-5119-cffe-f85a" type="selectionEntry"/>
        <entryLink id="056d-8420-cfca-35ae" name="5. Drain Life" hidden="false" collective="false" import="true" targetId="d54f-1c26-3dff-6094" type="selectionEntry"/>
        <entryLink id="bcbb-db2d-4a76-0a82" name="6. Doom and Darkness!" hidden="false" collective="false" import="true" targetId="7caf-d4f2-8210-fa58" type="selectionEntry"/>
      </entryLinks>
    </selectionEntryGroup>
  </sharedSelectionEntryGroups>
  <sharedRules>
    <rule id="3d6b-9611-a257-ad03" name="Infantry" hidden="false"/>
    <rule id="4463-1b38-aa4d-e03c" name="Large Target" publicationId="315e-e3c4-08af-fd51" hidden="false">
      <description>Add +1 to hit for shooting</description>
    </rule>
    <rule id="1524-2372-4aa0-6881" name="Fear" publicationId="315e-e3c4-08af-fd51" page="81" hidden="false">
      <description>Unit causes Fear</description>
    </rule>
    <rule id="96f0-c50f-e59e-85fa" name="Terror" publicationId="315e-e3c4-08af-fd51" page="81" hidden="false">
      <description>Unit causes Terror</description>
    </rule>
    <rule id="5d6f-7b4d-6093-4922" name="Stupidity" publicationId="315e-e3c4-08af-fd51" page="82" hidden="false">
      <description>Subject to Stupidity</description>
    </rule>
    <rule id="e930-0b71-2fef-3937" name="Fly" hidden="false">
      <description>Unit can fly</description>
    </rule>
    <rule id="494d-d57a-c1fa-b48e" name="Scaly Skin 3+" hidden="false">
      <description>Scaly Skin gives 3+ saving throw</description>
    </rule>
    <rule id="6a56-df83-e623-2218" name="Fast Cavalry" hidden="false">
      <description>See rulebook
</description>
    </rule>
    <rule id="889c-dfc3-95a5-2d30" name="Scouts" hidden="false">
      <description>These troops are skilled at sneaking forwards to scout out the enemy before the main force arrives. By making the best use of cover, advancing at night, or with other troops providing a diversion, they are able to deploy ahead of the rest of the army.
Scouts are set up after both armies have been deployed. They can be set up anywhere on the table, at least 10&quot; away from the enemy and must be out of the sight of any enemy troops and in or behind interposing terrain (not out in the open!). If both armies contain troops with this ability, each player should roll a D6, with the player scoring the highest choosing whether he deploys before or after the enemy&apos;s Scouts. Two opposing groups of Scouts cannot be set up within 10&quot; of each other.
Alternatively, Scouts can be placed on the controlling player&apos;s deployment zone like any other troops, after deployment of both main armies is finished.
</description>
    </rule>
    <rule id="1945-ac89-9cc4-3537" name="Skirmishers" hidden="false">
      <description>Unit are skirmishers</description>
    </rule>
    <rule id="ab5d-dda1-bffc-a027" name="Frenzy" publicationId="315e-e3c4-08af-fd51" page="84" hidden="false">
      <description>Subject to frenzy. +1 Attack
Frenzied troops must pursue broken units.</description>
    </rule>
    <rule id="2738-27d5-f4af-4722" name="Poisoned Attacks" publicationId="315e-e3c4-08af-fd51" page="114" hidden="false">
      <description>Poisoned Attacks. Hits of 6 auto wound. Sve as normal.
</description>
    </rule>
    <rule id="e08e-1c7b-a667-f05b" name="Killing Blow" hidden="false">
      <description>Wound roll of 6 slays man sized opponent, no saving throw, no matter how many wounds. Ward save still applies

</description>
    </rule>
    <rule id="410a-0d06-9044-665e" name="Stubborn" hidden="false">
      <description>Leadership breaktest are unmodified.</description>
    </rule>
    <rule id="59c1-8a35-5a25-ebe1" name="Regeneration" hidden="false">
      <description>A creature with this ability may try to regenerate any wound on a 1d6 roll of 4+. Only one attempt may be made on each wound to regenerate it.
Troops that are able to can regenerate damage if not too badly hurt. Work this out as follows. When attacked in close combat, shot at, or the target of spells, calculate the number of wounds suffered as normal. Once all attacks for the phase have been made, the creature may try to regenerate. Roll a D6 for each wound suffered during that phase. If a 4 or more is rolled, that wound has regenerated. You may only try to regenerate any single wound once. Any regenerated wounds are reinstated, and models removed as casualties are replaced if enough wounds are regenerated.
The results of combat, panic, etc are worked out after creatures have regenerated (the number of wounds inflicted does not include any that arc regenerated).</description>
    </rule>
    <rule id="8ae3-9724-980f-7308" name="Unbreakable" hidden="false">
      <description>Some creatures are utterly fearless and will never give 
up a battle, no matter how hopeless the situation 
might be. This could be because of the troops&apos;
extreme bravery, or because the creatures fighting are not truly alive.
These troops never break in close combat, and they are also immune to panic, terror and fear or any other Psychology rules. If defeated in close combat (even by fear-causing creatures that outnumber them) unbreakable troops continue to fight on regardless of results. They may never, however. declare that they are fleeing as a charge reaction, as they will literally die fighting under any circumstances.
</description>
    </rule>
    <rule id="ff2b-8db6-64fa-e9ca" name="Immune to Psycology " publicationId="315e-e3c4-08af-fd51" page="112" hidden="false">
      <description>Some warriors and creatures in the Warhammer world are almost completely fearless, or such grizzled veterans that scenes which would make lesser troops panic have no effect on them.
Troops that are immune to psychology are never affected by fear terror, frenzy or any other Psychology rules. Troops immune to Psychology may never flee as a charge reaction - they are far too proud and brave to do this! These troops still have to take Break tests as normal.
</description>
    </rule>
    <rule id="e5ce-0262-e817-adc2" name="Brace Of Pistols" hidden="false">
      <description>In first round of combat (H-T-H) the model counts as having two handweapons. In the first turn only these have STR4 and Armour Piercing.</description>
    </rule>
    <rule id="1e6c-d634-a65c-78eb" name="Hatred" hidden="false">
      <description>In the first turn of combat you may re-roll missed &apos;To-hit&apos; rolls</description>
    </rule>
    <rule id="eecc-4ed0-db8a-f6dc" name="Thrown Weapons" hidden="false">
      <description>Thrown weapons do not suffer penalties for long range, nor for moving</description>
    </rule>
    <rule id="df8d-7c05-c47b-9cd6" name="Magical Resistance (2)" hidden="false">
      <description>Generates two dispel dice when spells cast at the unit</description>
    </rule>
    <rule id="da12-a0e8-30ec-6c32" name="Magical Resistance (1)" hidden="false">
      <description>Generates 1 dispel dice for spells cast at the unit.</description>
    </rule>
    <rule id="ac96-22af-fac6-56f9" name="Scaly Skin 4+" hidden="false">
      <description>Armour save 4+</description>
    </rule>
    <rule id="fbdc-6e5e-eba8-357c" name="Flammable" hidden="false">
      <description>A flammable creature hit by a flaming weapon or fiery spell will take double wounds, so every wound suffered by a flammable creature will be doubled to 2 wounds. Take any saves before multiplying the wounds.</description>
    </rule>
    <rule id="bc68-6c48-02d1-3ce4" name="Sword of Striking" hidden="false">
      <description>+1 to hit</description>
    </rule>
    <rule id="2b48-77b8-4869-a2e0" name="Rule of Burning Iron" hidden="false">
      <description>Cast on 3+
Burning Iron is a magic missile with a range of up to 24&quot;. If successfully cast, the spell hits a single model (chosen by the caster) and causes 1 S3 hit if the target has no armour save or a save of 6, 1 S4 hit if the target has an armour save of 5+, and 1 S5 hit if the target has an armour save of 4+ or better. This is a Fire attack and causes double damage against flammable  targets.</description>
    </rule>
    <rule id="3d8c-0ee2-bef1-198b" name="Commandment of Brass" hidden="false">
      <description>Cast on 6+
Lasts one turn. This spell has a range of 24&quot; and can be cast on an enemy war machine or chariot which is visible to the caster and which is not already engaged in close combat. If successfully cast, the machine cannot move or shoot until the end of its own following turn. If forced to flee for whatever reason, the spell is broken and the unit flees.</description>
    </rule>
    <rule id="d466-c2b4-bd9f-71a8" name="Transmutation of Lead" hidden="false">
      <description>Cast on 8+
This spell can be cast on an enemy unit that is within 24&quot;, and which is engaged in close combat. If successfully cast, the enemy&apos;s armour, weapons and other equipment are transmuted to lead for the duration of the ensuing Close Combac phase. The affected unit suffers a -1 to hit penalty in close combat, and armour saves suffer a -1 penalty during that turn&apos;s Close Combat phase.</description>
    </rule>
    <rule id="1715-681f-b7db-4e39" name="Distillation of Molten Silver" hidden="false">
      <description>Cast on 8+
The Distillation of Molten Silver is a magic missile with a range of up to 24&quot;. If successfully cast, a squall of molten silver hits the target and causes 2D6 Strength 4 hits. This is a Fire attack and causes double damage against flammable targets.</description>
    </rule>
    <rule id="b86b-76e0-fb70-f50e" name="Law of Gold" hidden="false">
      <description>Cast on 9+
This spell can be cast on an enemy unit that is within 24&quot; of the caster. The opposing player must nominate one magic item carried by any model in the unit. The caster rolls a D6: on the roll of 1-4 the item cannot be used until the end of enemy&apos;s next turn, on a 5 or 6 the item cannot be used for the rest of game. The Law of Gold has no effect on a unit that does not include any models with magic items.</description>
    </rule>
    <rule id="985a-72ac-2e14-3b5f" name="Bane of Forged Steel" hidden="false">
      <description>Caston 11+
This spell has a range of 12&quot; and can be cast on an enemy unit which is visible to the caster. If successfully cast, the enemy&apos;s weapons begin to crumble and rust away. No weapon bonuses or penalties apply to the affected unit for the remainder of the battle. For example, a unit wielding Great Swords will not get their +2 Strength bonus in combat for the rest of the battle, but will now not have to strike last. A unit with missile weapons may not shoot for the duration of the entire battle. Affected units are assumed to use their fist/claws, etc, and so cannot benefit from the rules for using two hand weapons or a hand weapon and shield. War machines and magic weapons cannot be affected by the Bane of Forged Steel - only ordinary weaponry carried by troops.</description>
    </rule>
    <rule id="e4f3-ac8c-8f42-8bad" name="Fire Ball" hidden="false">
      <description>Cast on 5+
The fire ball is a magic missile with a range of up to 24&quot;. If successfully cast, the Fire Ball hits its target and causes D6 Strength 4 hits.</description>
    </rule>
    <rule id="5966-5043-5145-9614" name="Flaming Sword of Rhuin" hidden="false">
      <description>Cast on 6+
Remains in play. This spell can be cast by the Wizard on himself. It can be cast even if the Wizard is in close combat. Once it has been cast, the spell lasts until the Wizard attempts another spell.

A magical flaming blade materializes in the Wizard&apos;s grasp. This counts as a magic weapon. The Wizard gains +1 additional Attack to his profile for the duration of the spell. All the Wizard&apos;s attacks will hit on a basic score of 2+ and he adds +3 to his Strength whilst using the Sword of Rhuin. Whilst he has the Flaming Sword, the Wizard must use it as his sole weapon, he cannot combine it with other weapons.</description>
    </rule>
    <rule id="4b81-3009-c4e1-78ad" name="Fiery Blast" hidden="false">
      <description>Cast on 8+
The Fiery Blast is an especially dangerous magic missile - it is an upmarket version of the Fire Ball, being both more powerful and harder to cast. The Fiery Blast has a range of up to 24&quot;. If successfully cast, the Fiery Blast hits its target and causes 2D6 Strength 4 hits.</description>
    </rule>
    <rule id="df54-651f-c86b-1145" name="Burning Head" hidden="false">
      <description>Cast on 9+
A phantasmic flaming head shoots 18&quot; from the caster in a straight direct path, laughing insanely as it burns a trail of destruction in its way. Each model that lies in the direct path of the Burning Head suffers a Strength 4 hit.</description>
    </rule>
    <rule id="089b-2891-1e73-cfcb" name="Conflagration of Doom" hidden="false">
      <description>Cat on 11+
This can be cast on any enemy unit anywhere on the table. If successfully cast, the target bursts into flames taking D6 Strength 4 hits. The target can take further hits depending on how long the fire burns. To represent this both players roll a D6. If the casting player&apos;s dice score is lower than or equal to his opponent&apos;s, the flames go out and nothing else happens, but if he rolls higher, add the dice roll to the number of hits caused. Both players then roll a further D6 and repeat the process until the casting player rolls equal to or less than his opponent. Once the casting player fails to roll higher, the fire goes out and no further hits are caused.</description>
    </rule>
    <rule id="6e31-6e0d-1f0b-6881" name="Wall of Fire" hidden="false">
      <description>Cast on 12+
Remains in play. This spell has a range of 24&quot; and can be cast on an enemy unit visible to the caster which has no models (friend or foe) within 1&quot; of its front rank (walls. hedges and other scenic features don&apos;t matter). The spell cannot be cast on units with a 360° line of sight.

A searing wall of flame suddenly rises in front of the unit. To represent this take some cotton wool or paper and place this in a line up to 1&quot; thick in front of the unit.

The unit suffers 1 automatic hit for each model (including characters) in its front rank. Each hit is resolved with a Strength of 4.

Once it is cast, the Wall of Fire remains where it is until it is dispelled, or until the Wizard chooses to end it (which he can do at any time), attempts to cast another spell or is slain. No further hits are caused by the Wall of Fire unless a unit tries to move through it, in which case each model that moves through the Wall of Fire suffers a further Strength 4 hit.

The Wall of Fire does not block the line of sight of archers and chargers, nor does it reduce a unit&apos;s Movement rate.</description>
    </rule>
    <rule id="7d9a-67cc-3fbe-e93e" name="Steed of Shadows" hidden="false">
      <description>Cast on 4+
This spell may be cast upon the Wizard himself or any single friendly independent character model within 12&quot; of him - the spell can only be cast on a model with a Unit Strength of 1 (it won&apos;t work on a mounted model or a model riding in a chariot, for example).

If successfully cast, the model can make a normal flight move of up to 20&quot;. The model can fly out of close combat if desired, but cannot fly into close combat unless positioned so that it could do so by making a normal aerial charge (for example, it must not be engaged in combat already and must be able to see the target).</description>
    </rule>
    <rule id="3b5a-e19c-52db-18cd" name="Creeping Death" hidden="false">
      <description>Cast on 6+
The Creeping Death is a magic missile with a range of up to 24&quot;. If successfully cast, the Creeping Death hits its targets and causes D6 Strength 3 hits. No armour saves are allowed against wounds caused by the Creeping Death.</description>
    </rule>
    <rule id="d735-a9bb-17d2-820b" name="Pelt of Midnight" hidden="false">
      <description>Cast on 7+
Remains in play. 
This spell can be cast on a friendly unit that is within 24&quot; of the caster. If successfully cast, all subsequent shooting directed at the unit requires a 6 to hit. All weapons which use a Scatter dice to hit will scatter automatically when targeted at the unit.

Once it is cast, the Pelt of Midnight continues to work until it is dispelled, or until the Wizard chooses to end it (which he can do at any time), attempts to cast another spell or is slain.</description>
    </rule>
    <rule id="4f37-9562-182c-b68d" name="Shades of Death" hidden="false">
      <description>Cast on 8+
Remains in play. 
This spell affects a single friendly unit within 6&quot; of the Wizard which is not engaged in close combat. The unit now causes fear
.

Once it is cast, the Shades of Death continues to work until it is dispelled, or until the Wizard chooses to end it (which he can do at any time), attempts to case another spell or is slain.</description>
    </rule>
    <rule id="24b4-c91c-163d-a7de" name="Unseen Lurker" hidden="false">
      <description>Cast on a 10+
This spell can be cast on a friendly unit that is within 24&quot;, and which is not already engaged in close combat. The unit can immediately make a move of up to 8&quot; in the same way as a normal move made in the Movement phase. The unit can charge an enemy within 8&quot; if opportunity permits, and the same rules apply as for a normal charge made during the Movement phase. The enemy can only respond by holding their ground - the Unseen Lurker conceals the charger&apos;s intent until it is too late to respond in any other way.</description>
    </rule>
    <rule id="f18a-e90b-4ecd-066a" name="Pit of Shades" hidden="false">
      <description>Cast on 11+
The Pit of Shades can be cast on any one unengaged enemy unit anywhere on the table. If successfully cast, the ground falls away beneath the unit&apos;s feet toppling them to their doom.

Take the 3&quot; template and place it over a single target enemy unit. All models in the target unit completely under the template are automatically hit and those touched by it are hit on a 4+ on a D6. Models hit suffer 1 Strength 3 hit. In addition, the player whose unit is affected rolls a D6: on a score of 1-3 the unit climbs out of the pit (this counts as moving for the purposes of shooting, etc) and moves at half speed next turn, on a score of 4-6 the unit is unaffected. The pit closes up after the unit has clambered our of it.</description>
    </rule>
    <rule id="986a-0c00-d0d0-6dda" name="The Oxen Stands" hidden="false">
      <description>Cast on a 5+
This spell can be cast on any friendly fleeing unit on the tabtetop. If successful, the unit is rallies immediately.</description>
    </rule>
    <rule id="d67c-9fdd-1e8a-1920" name="The Eagle&apos;s Cry" hidden="false">
      <description>Cast on a 6+
This spell can be cast on an unengaged enemy cavalry unit, swarm, chariot or a single ridden or unridden monster which is within 24&quot; of the caster. If successful, the creature/s become momentarily wild and uncontrollable.

The affected unit must take an immediate Leadership test. If passed, the unit only suffers a -1 Movement penalty during their next Movement phase (-2&quot; if it marches or charges). The Movement of flyers is reduced to 12&quot;. If failed, the unit/monster immediately makes a compulsory move of 2D6&quot; directly towards its own side&apos;s table edge, but halts if this move brings it into contact with a friendly unit, impassable terrain, or within 1&quot; of any enemy. If the unit moves off the tabletop, it counts as having fled the battle.</description>
    </rule>
    <rule id="c438-f773-fd61-8dc1" name="The Bear&apos;s Anger" hidden="false">
      <description>Cast on a 6+
Remains in play. 
This spell can be cast by the Wizard on himself or another roughly man-sized model on foot in the same unit while he is in close combat. The target becomes as wild and powerful as a mighty bear. He adds +3 Attacks, +2 Strength, and +1 Toughness to his characteristics. He cannot wield a weapon whilst using this spell.

Once cast, the spell lasts until it is dispelled, until the Wizard chooses to end it (which he can do at any time), attempts to cast another spell or the affected model is slain.</description>
    </rule>
    <rule id="3996-f9dd-f0b9-a860" name="The Crow&apos;s Feast" hidden="false">
      <description>Cast on a 7+
Corvos the Crow&apos;s Feast is a magic missile
 with a range of up to 24&quot;. If successfully cast, a flock of crows mobs the spell&apos;s target and causes 2D6 Strength 3 hits.</description>
    </rule>
    <rule id="c761-7b61-ad6f-3a78" name="The Beast Cowers" hidden="false">
      <description>Cast on 7+
This spell can be cast on any enemy unit of cavalry, a chariot, a ridden monster, a lone monster such as a Great Eagle, or a swarm. The target of the spell must be on the tabletop and must be engaged in close combat.

If successfully cast, any creatures in the unit (but not their riders), will cower and therefore require 6s to hit in that turn&apos;s Close Combat phase. If 6s are required anyway, the creatures may not attack.</description>
    </rule>
    <rule id="fec2-d060-c855-65a9" name="The Wolf Hunts" hidden="false">
      <description>Cast on a 9+
This spell can be cast on any friendly unit of cavalry, a chariot, a ridden monster, a monster on its own, or a swarm. The target must be within 24&quot; of the caster and must not be engaged in close combat.

If the spell is cast successfully, the unit moves 2D6&quot; towards the Wizard or an enemy unit that it can see. If no enemy are visible then it will not move. If the distance is sufficient to reach the enemy, the unit is deemed to have charged and all the normal charging rules apply, except that the enemy can only stand their ground - no other charge response is possible due to the speed of the spell.</description>
    </rule>
    <rule id="4658-e70b-b8ef-673e" name="Second Sign of Amul " hidden="false">
      <description>Cast on 6+
This spell can be cast by a Wizard and gives the player a chance of re-rolling dice during the remainder of his own turn.

If successfully cast, roll a D3 to determine the number of re-rolls the player can make. Each re-roll entitles the player to take any single D6 dice (including one of the dice rolled on a 2D6, 3D6, etc) he has rolled and roll it again. Any dice can be re-rolled but the player cannot re-roll a re-rolled dice... he only gets one chance to overcome a duff roll! Any re-rolls not used by the end of the turn are wasted.</description>
    </rule>
    <rule id="6508-46ac-2741-0173" name="Portent of Far" hidden="false">
      <description>Cast on 6+
This spell can be cast on a friendly unit that is within 12&quot; and which is engaged in close combat.

If successfully cast, all subsequent dice rolls of a 1 made either to hit or to wound by this unit can be re-rolled that turn. Re-rolled scores of 1 stand - you cannot re-roll a re-rolled dice.</description>
    </rule>
    <rule id="867b-330c-80f2-ed86" name="Forked Lightning (Revised)" hidden="false">
      <description>Cast on 7+
This spell can be cast on any unengaged enemy unit within 24&quot; of the caster. If successfully cast, the unit is struck by lightning causing D6 Strength 4 hits. These hits are distributed exactly like hits from shooting.</description>
    </rule>
    <rule id="5290-687f-3b11-d9dd" name="Uranon&apos;s Thunder Bolt (Revised)" hidden="false">
      <description>Cast on 9+
This spell can be cast on any unengaged enemy unit within 24&quot; of the caster. If successfully cast, the unit is struck by a thunder bolt causing D6 Strength 4 hits with no Armour save possible. These hits are distributed exactly like hits from shooting.</description>
    </rule>
    <rule id="2530-d828-3c0d-f0db" name="Storm of Cronos" hidden="false">
      <description>Cast on 9+
This spell can be cast on all enemy units which are visible to and within 12&quot; of the caster. If successfully cast, all enemy units within range and sight are affected. Each unit takes D6 Strength 4 hits, distributed exactly like shooting.</description>
    </rule>
    <rule id="fbf7-a711-49c2-cb2c" name="The Comet of Casandora (Revised)" hidden="false">
      <description>Cast on 11+
This spell can be cast upon any fixed point on the tabletop. If successfully cast, place a suitable marker over the exact spot affected - a small coin is ideal for this.

Once cast, the player rolls a D6 at the start of each player&apos;s turn (ie, at the start of his turn and at the start of his opponent&apos;s turn). On a score of 1-3 nothing happens, but place another marker on the first. On the score of a 4-6 the spot is struck by a comet. All units from either side which are within D6&quot; multiplied by the number of markers already placed are struck by the comet. Each unit struck by the comet takes 2D6 Strength 4 hits. For example - if there are two markers in place and the D6 roll is a 4, all units within 4 x 2 = 8&quot; are struck. The Comet is not a remains in play
 spell as such, although the spell can be dispelled while in play, (remove all markers), and a Wizard cannot have more than one Comet in play at one time.</description>
    </rule>
    <rule id="d187-4b56-6442-ebf4" name="Pha&apos;s Illumination" hidden="false">
      <description>Cast on 5+
Remains in play. 
This spell can be cast by the Wizard on himself. Once it has been cast, the spell lasts until the Wizard attempts another spell or until it is dispelled.

The Wizard is swatched in power. Regardless of his characteristics, he has 3 Attacks and Strength 5 while this spell lasts. He cannot wield a weapon whilst using this spell. No magic weapons can be used to attack him whilst the spell lasts. Once cast, the spell lasts for the duration of the combat engagement until it is dispelled, until the Wizard chooses to end it (which he can do at any time), attempts to cast another spell or is slain.</description>
    </rule>
    <rule id="0c87-73f2-590b-eaa0" name="Burning Gaze" hidden="false">
      <description>Cast on 5+
Shem&apos;s Burning Gaze is a magic missile with a range of up to 24&quot;. If successfully cast, the Burning Gaze hits its targets and causes D6 Strength 4 hits.

Burning Gaze is a flaming attack and so causes double damage on flammable targets, etc.</description>
    </rule>
    <rule id="20dd-4bae-11fd-55da" name="Dazzling Brightness" hidden="false">
      <description>Cast on 6+
This spell can be cast on any enemy unit that is engaged in close combat and which is within 18&quot; of the caster. If successfully cast, the target unit is dazzled and its WS characteristic is reduced to 1 for the duration of that turn&apos;s Close Combat phase.</description>
    </rule>
    <rule id="1e22-d345-bdc3-e388" name="Healing Hand" hidden="false">
      <description>Cast on 7+
This spell can be cast upon the Wizard himself or upon any friendly model anywhere on the tabletop that has already suffered one or more wounds.

If successfully cast, the model regains all its lost Wounds. In the case of a monster and its rider, choose one as the target of the spell. This spell has no effect on Undead models, Chaos Daemons, war machines, chariots or other unliving units.</description>
    </rule>
    <rule id="15d0-4e9d-66ad-ed78" name="Guardian Light" hidden="false">
      <description>Cast on 8+
Remains in play. 
This spell affects all friendly units that are within 12&quot; of the caster. If successfully cast, all these units are now Immune to Psychology, and fleeing units automatically rally.

Once cast, the spell remains in play until it is dispelled, until the Wizard chooses to end it (which he can do at any time), attempts to cast another spell or is slain.</description>
    </rule>
    <rule id="30d3-53c0-a560-fc59" name="Blinding Light" hidden="false">
      <description>Cast on 9+
Lasts one turn. 
This spell can be cast on an enemy unit which is visible to and within 24&quot; of the caster, and which is not engaged in close combat. If successfully cast, the unit is momentarily blinded and its Movement characteristics is reduced by half (rounding down) and its WS and BS are reduced to 1. This lasts until the end of the unit&apos;s following turn.</description>
    </rule>
    <rule id="80ab-6727-9b71-e68b" name="Mistress of the Marsh (Revised)" hidden="false">
      <description>Cast on 6+
This spell cast be cast upon an enemy unit that is within 12&quot; of a river, stream, bog, or any other water feature on the tabletop which has been identified as such before the game. If there are no such features on the table, it can be cast on it enemy unit within 12&quot; of the caster. It cannot be used against a unit that engaged in close combat. If successfully cast, the ground beneath the unit is turned to swamp and the unit moves at half speed until the end if its own following turn. If fleeing, for whatever reason, the unit flees at half speed (normally 2D6 halved). This spell has no effect on flyers or ethereal creatures.</description>
    </rule>
    <rule id="2eb5-7b79-ffdc-e083" name="Father of the Thorn (Revised)" hidden="false">
      <description>Cast on 7+
The Father of the Thorn can be cast on an unengaged enemy unit within 24&quot; of the caster. If successfully cast, thorns and briars shoot from the earth entangling limbs and tearing at flesh.

The spell causes 2D6 Strength 3 hits.</description>
    </rule>
    <rule id="004f-b7a6-35f6-c02b" name="The Howler Wind (Revised)" hidden="false">
      <description>Cast on 7+
Remains in play. 
This spell can be cast upon the Wizard himself. If successfully cast, no shooting with Strength 4 or less can be targeted at units within 12&quot; of the Wizard - even if some models in the unit are more than 12&quot; away. This doesn&apos;t prevent units from firing through or out of the affected area at targets beyond. In addition, all enemy units within 12&quot; of the Wizard move at half speed due to the effect of the howling wind. Note that this move penalty only applies when actually within the affected area - enemy treat the entire zone as if it were difficult ground. Once cast, the spell lasts until dispelled, the Wizard chooses to end it (which he can do at any time), attempts to cast another spell or is slain.</description>
    </rule>
    <rule id="5c6d-2bfa-f852-ef3e" name="Master of the Wood (Revised)" hidden="false">
      <description>Cast on 7+
This spell can be cast upon an enemy unit that is within 12&quot; of a wood, copse or any other wooded feature on the tabletop which has been identified as such before the game. If there are no such features in range, it can be cast on any enemy unit within 12&quot; of the caster. It cannot be used against a unit that is engaged in close combat. If successfully cast, the unit is battered by the branches of trees if within a wood, or lashed at by roots which erupt from the ground if there is no wood nearby.

This causes D6 Strength 5 hits on the unit, plus a further D6 Strength 5 hits if it is partially or wholly within the wood. This spell does not affect Dryads or Treemen.</description>
    </rule>
    <rule id="b4ce-3b5b-94c6-489f" name="Master of Stone (Revised)" hidden="false">
      <description>Cast on 8+
This spell can be cast upon an enemy unit that is within 12&quot; of a hill, rocky outcrop. ruins or any area which has been identified as high ground, rocky or ruinous before the game. If there are no such features in range, it can be cast on any enemy unit within 12&quot; of the caster. It cannot be used against a unit that is engaged in close combat. If successfully cast, shards of stone fly against the unit.

The spell causes 2D6 Strength 4 hits on the unit, plus a further D6 Strength 4 hits if the unit is partially or wholly within the feature.</description>
    </rule>
    <rule id="25d4-a1f2-0794-a39f" name="The Rain Lord (Revised)" hidden="false">
      <description>Cast on 10+
This spell can be cast on an unengaged enemy unit within 30&quot;. If successfully cast, the target unit is enveloped in rain and gets a soaking.

A soaked unit suffers a further -1 modifier on its shooting rolls to hit. If the unit does not fire using BS (a cannon, for example), then it may only fire if the player can first roll a 4+ on a D6 each turn.

This is not a remains in play
 spell as such, but units that have been soaked suffer the effects for the rest of the battle. There is no additional effect for being soaked more than once.</description>
    </rule>
    <rule id="9fe7-c1dc-0e19-0809" name="Dark Hand of Death" hidden="false">
      <description>Cast on 5+
This is a magic missile with a range of up to 24&quot;. If successfully cast, the spell hits its target and causes D6 Strength 4 hits.</description>
    </rule>
    <rule id="d48a-a61b-34d8-50d0" name="Death Dealer" hidden="false">
      <description>Cast on 5+
This spell can be cast on a friendly unit that is engaged in close combat and which is within 24&quot; of the caster. If successfully cast then models which fall casualty can fight back, stabbing at their enemy with their last strength.

The spell lasts for the duration of that Turn&apos;s Close Combat phase. Fight the combat as normal. Any model in the affected unit which falls casualty during the combat may make one further attack qith its basic Strength before it is removed - this is regardless of whether the model has already fought or not. In the case of mounted models, models riding chariots or monsters and so forth, only riders may strike back.</description>
    </rule>
    <rule id="04eb-7e9d-1a5d-cd4b" name="Steal Soul" hidden="false">
      <description>Cast on 8+
This spell can be cast on an enemy model within 12&quot;. If successfully cast, the victim&apos;s soul is torn and rendered by dark forces and sacrificed to the caster himself.

The enemy model loses 1 Wound. No armour save is allowed. In addition, the casting Wizard gains 1 Wound for the duration of the battle. This spell can be used to increase the caster&apos;s Wounds characteristic beyond its normal maximum level, and can be used several times to increase the caster&apos;s Wounds even further. At the end of the battle, any stolen Wounds are lost - if the Wizard has no Wounds left once stolen Wounds are removed, he is slain.

The spell cannot affect Undead, Chaos Daemons, and similar units which don&apos;t have a soul!</description>
    </rule>
    <rule id="bac7-c263-d173-ac75" name="Wind of Death" hidden="false">
      <description>Cast on 8+
This is a magic missile with range of up to 24&quot;. If successfully cast, the spell hits its target and causes 2D6 Strength 4 hits.</description>
    </rule>
    <rule id="a171-3bf1-5423-ee49" name="Drain Life" hidden="false">
      <description>Cast on 10+
If cast successfully each enemy unit within 12&quot; of the Wizard is affected.

Each unit takes D6 Strength 3 hits. No armour saves are allowed against a Drain Life spell. These hits are distributed exactly like hits from shooting.

The spell cannot affect Undead, Chaos Daemons, or buildings and similar models, as they are not truly alive.</description>
    </rule>
    <rule id="ea42-2df2-f47b-3578" name="Doom and Darkness!" hidden="false">
      <description>Cast on 12+
Lasts one turn+. 
This spell can be cast upon an enemy unit which is within 24&quot; of and visible to the caster. If successfully cast, the unit is enshrouded by a black cloud of despair.

For the duration of the turn the affected unit will suffer a -3 penalty to any Leadership test (including Break tests) it is required to take. At the start of its following turn, the unit must take and pass a Leadership test (at -3), otherwise it remains affected for the duration of that turn as well. At the end of the affected unit&apos;s following turn, the spell ceases to have any effect.

The spell cannot affect Undead targets, Chaos Daemons
 or Unbreakable
 units. Units, immune to psychology are not affected either.</description>
    </rule>
  </sharedRules>
  <sharedProfiles>
    <profile id="5556-38ea-b278-4a8f" name="Hand Weapon" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="3107-4d1e-9a51-6564">CC only</characteristic>
        <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378">As User</characteristic>
        <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236"/>
      </characteristics>
    </profile>
    <profile id="72aa-da68-2dae-4ab6" name="Additional Hand weapon" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="3107-4d1e-9a51-6564"/>
        <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378"/>
        <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236">+1A</characteristic>
      </characteristics>
    </profile>
    <profile id="3596-7d17-9ca2-fb92" name="Halberd" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="3107-4d1e-9a51-6564">CC only</characteristic>
        <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378">As User +1</characteristic>
        <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236">Requires 2 Hands</characteristic>
      </characteristics>
    </profile>
    <profile id="97d4-ed3b-5f76-5a23" name="Great Weapon" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="3107-4d1e-9a51-6564"/>
        <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378">As user +2</characteristic>
        <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236">Requires two hands
Always Strikes Last</characteristic>
      </characteristics>
    </profile>
    <profile id="a15a-0123-6693-7a50" name="Lance" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="3107-4d1e-9a51-6564"/>
        <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378">+2S on charge</characteristic>
        <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236">Mounted models only.</characteristic>
      </characteristics>
    </profile>
    <profile id="3d79-7984-991a-8b67" name="Shield" hidden="false" typeId="f681-9937-db53-f1d8" typeName="Armour">
      <characteristics>
        <characteristic name="Saving Throw Modifier" typeId="b600-e1ed-0765-27c1">-1 SV, -2SV with HW</characteristic>
        <characteristic name="Special rules" typeId="42c3-68ab-cfa5-203e"/>
      </characteristics>
    </profile>
    <profile id="752a-95b9-343a-8f75" name="Light Armour" hidden="false" typeId="f681-9937-db53-f1d8" typeName="Armour">
      <characteristics>
        <characteristic name="Saving Throw Modifier" typeId="b600-e1ed-0765-27c1">6+</characteristic>
        <characteristic name="Special rules" typeId="42c3-68ab-cfa5-203e"/>
      </characteristics>
    </profile>
    <profile id="3dd5-f228-98a7-453a" name="Heavy Armour" hidden="false" typeId="f681-9937-db53-f1d8" typeName="Armour">
      <characteristics>
        <characteristic name="Saving Throw Modifier" typeId="b600-e1ed-0765-27c1">5+</characteristic>
        <characteristic name="Special rules" typeId="42c3-68ab-cfa5-203e"/>
      </characteristics>
    </profile>
    <profile id="ec7d-fa6d-d0f6-5589" name="Spear (Mounted)" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="3107-4d1e-9a51-6564">-</characteristic>
        <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378">As user </characteristic>
        <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236">+1S on charge</characteristic>
      </characteristics>
    </profile>
    <profile id="222b-1e29-9d24-09d7" name="Spears (Infantry)" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="3107-4d1e-9a51-6564">-</characteristic>
        <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378">As user</characteristic>
        <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236">May fight in two ranks</characteristic>
      </characteristics>
    </profile>
    <profile id="ec76-323e-c09d-eae4" name="Bow" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="3107-4d1e-9a51-6564">24&quot;</characteristic>
        <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378">3</characteristic>
        <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236"/>
      </characteristics>
    </profile>
    <profile id="25e4-8f3a-a1a8-a7b6" name="Barding" hidden="false" typeId="f681-9937-db53-f1d8" typeName="Armour">
      <characteristics>
        <characteristic name="Saving Throw Modifier" typeId="b600-e1ed-0765-27c1">+1 </characteristic>
        <characteristic name="Special rules" typeId="42c3-68ab-cfa5-203e"/>
      </characteristics>
    </profile>
    <profile id="67c1-cca3-76a7-0667" name="Long Bow" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="3107-4d1e-9a51-6564">30&quot;</characteristic>
        <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378">3</characteristic>
        <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236"/>
      </characteristics>
    </profile>
    <profile id="5e53-1e3a-3e8e-22b2" name="Short Bow" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="3107-4d1e-9a51-6564">16&quot;</characteristic>
        <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378">3</characteristic>
        <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236"/>
      </characteristics>
    </profile>
    <profile id="1979-9085-40d4-adee" name="Crossbow" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="3107-4d1e-9a51-6564">30</characteristic>
        <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378">4</characteristic>
        <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236">Mv or Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="67a2-04c0-f8fb-7741" name="Sling" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="3107-4d1e-9a51-6564">18</characteristic>
        <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378">3</characteristic>
        <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236">x2 shots if within 9&quot;</characteristic>
      </characteristics>
    </profile>
    <profile id="771a-10ff-d596-2e8e" name="Javelin" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="3107-4d1e-9a51-6564">8&quot;</characteristic>
        <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378">as user</characteristic>
        <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236">Thrown weapon</characteristic>
      </characteristics>
    </profile>
    <profile id="9c9b-f589-846f-c1d8" name="Throwing Star/ Knife" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="3107-4d1e-9a51-6564">8</characteristic>
        <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378">As user</characteristic>
        <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236">Thrown weapon</characteristic>
      </characteristics>
    </profile>
    <profile id="c4c3-8f22-9db7-1a00" name="Throwing Axe" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="3107-4d1e-9a51-6564">8</characteristic>
        <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378">As user</characteristic>
        <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236">Thrown weapon, ST +1</characteristic>
      </characteristics>
    </profile>
    <profile id="4ce2-acff-b3af-72fd" name="Handgun" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="3107-4d1e-9a51-6564">24&quot;</characteristic>
        <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378">4</characteristic>
        <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236">Armour piercing(ie -2 sv) Move or Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="e6ab-509a-9826-7080" name="Pistol" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="3107-4d1e-9a51-6564">8</characteristic>
        <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378">4</characteristic>
        <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236">Armour piercing, In cc S4, AP for first turn of combat only.
</characteristic>
      </characteristics>
    </profile>
    <profile id="10f8-e196-d180-044c" name="Flail" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="3107-4d1e-9a51-6564">cc</characteristic>
        <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378">As user</characteristic>
        <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236">+2 Str on first turn of combat. Requires 2 hands</characteristic>
      </characteristics>
    </profile>
    <profile id="929d-16ed-c03a-8d1c" name="Morning Star" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="3107-4d1e-9a51-6564">cc</characteristic>
        <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378">as user</characteristic>
        <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236">+1 S on first turn of combat</characteristic>
      </characteristics>
    </profile>
    <profile id="f9f4-4ab2-8b24-8433" name="War machines" hidden="false" typeId="a54a-7f00-29bf-12b1" typeName="Profile">
      <characteristics>
        <characteristic name="Mv" typeId="0e92-d038-82bf-fb41">-</characteristic>
        <characteristic name="WS" typeId="f95b-da01-0578-3bdc">-</characteristic>
        <characteristic name="BS" typeId="4a8b-0c8e-3daf-7901">-</characteristic>
        <characteristic name="S" typeId="b690-4bc0-bb73-267b">-</characteristic>
        <characteristic name="T" typeId="8712-f56f-5b22-a720">7</characteristic>
        <characteristic name="W" typeId="253a-9b00-4fde-8ac2">3</characteristic>
        <characteristic name="I" typeId="dfff-363e-f72a-5a59">-</characteristic>
        <characteristic name="A" typeId="6b9f-c8fe-8998-27e3">-</characteristic>
        <characteristic name="Ld" typeId="2d45-18fe-9eb3-b113">-</characteristic>
      </characteristics>
    </profile>
    <profile id="0281-a3e5-5759-d725" name="Javelin" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="3107-4d1e-9a51-6564">8&quot;</characteristic>
        <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378">As User</characteristic>
        <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236">Thrown Weapon</characteristic>
      </characteristics>
    </profile>
  </sharedProfiles>
</gameSystem>