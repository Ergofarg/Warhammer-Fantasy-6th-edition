<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="6d8e-38d9-3c69-febf" name="Warhammer Fantasy Battle 6th edition" revision="6" battleScribeVersion="2.03" authorName="Ergo Fargo" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <publications>
    <publication id="315e-e3c4-08af-fd51" name="BRB"/>
  </publications>
  <costTypes>
    <costType id="ecfa-8486-4f6c-c249" name="pts" defaultCostLimit="-1.0" hidden="false"/>
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
              <repeats>
                <repeat field="limit::ecfa-8486-4f6c-c249" scope="roster" value="1000.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" repeats="1" roundUp="false"/>
              </repeats>
              <conditions>
                <condition field="selections" scope="parent" value="1999.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="model" type="greaterThan"/>
              </conditions>
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
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <constraints>
            <constraint field="selections" scope="parent" value="-1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="32a8-c5ab-9c08-b656" type="max"/>
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
                </modifier>
              </modifiers>
            </modifierGroup>
          </modifierGroups>
          <constraints>
            <constraint field="selections" scope="parent" value="-1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6167-0493-f2af-4b0a" type="max"/>
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
      </costs>
    </selectionEntry>
    <selectionEntry id="b76c-6bad-4650-dbb0" name="Dispel Scroll" publicationId="315e-e3c4-08af-fd51" page="154" hidden="false" collective="false" import="true" type="upgrade">
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="25.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="c5c1-60aa-745f-c9d3" name="Enchanted Shield" publicationId="315e-e3c4-08af-fd51" page="154" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c431-9ff6-be7b-5106" type="max"/>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d44d-4746-8090-bae0" type="max"/>
      </constraints>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="10.0"/>
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
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntry>
    <selectionEntry id="b22a-6be5-d4f9-7776" name="Staff of Sorcery" publicationId="315e-e3c4-08af-fd51" page="154" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="097e-f756-67e6-9b20" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="eed4-81a0-979b-ef01" type="max"/>
      </constraints>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="50.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="c7cc-76a3-c413-ddb8" name="Talisman of Protection" publicationId="315e-e3c4-08af-fd51" page="154" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="abf4-8083-375a-96fb" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="82b4-9259-cadd-77c8" type="max"/>
      </constraints>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="15.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="f327-567f-ef99-0403" name="War Banner" publicationId="315e-e3c4-08af-fd51" page="154" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="2f29-db1a-55bc-393e" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="b30d-1552-9e2a-1eb3" type="max"/>
      </constraints>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="25.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="74fc-c90b-250e-6b87" name="Biting Blade" publicationId="315e-e3c4-08af-fd51" page="154" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="bf1b-d4a5-ad56-80f3" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="950e-6cb6-1db3-271f" type="max"/>
      </constraints>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="10.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="6e5a-eeea-ec67-3632" name="Sword of Battle" publicationId="315e-e3c4-08af-fd51" page="154" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="dad1-d33d-0d59-269d" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="def8-a287-2e97-8274" type="max"/>
      </constraints>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="25.0"/>
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
      </costs>
    </selectionEntry>
    <selectionEntry id="6b55-e847-311d-d6ca" name="Sword of Striking" publicationId="315e-e3c4-08af-fd51" page="154" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="a9bb-1a01-1d6f-c689" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="f890-1c46-6d14-1589" type="max"/>
      </constraints>
      <profiles>
        <profile id="8deb-ade9-02c8-f009" name="Sword of Striking" hidden="false" typeId="7889-42d9-70a0-3ea9" typeName="Weapon">
          <characteristics>
            <characteristic name="Range" typeId="3107-4d1e-9a51-6564">cc</characteristic>
            <characteristic name="Strength" typeId="6fe4-1ebb-cb04-1378">+1 WS</characteristic>
            <characteristic name="Special Rules" typeId="a21a-cdc0-4b13-b236">Adds +1 WS</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="30.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="dde4-0ba8-7b3c-57b7" name="Heavy Armour" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="daf1-0894-5daa-68a0" name="Heavy Armour" hidden="false" targetId="3dd5-f228-98a7-453a" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
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
      </costs>
    </selectionEntry>
    <selectionEntry id="50e2-1873-a856-03e7" name="Shield" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="1fd7-1522-9de7-77fa" name="Shield" hidden="false" targetId="3d79-7984-991a-8b67" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="8649-8ac8-5a6f-fd8d" name="Lance" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="f3d0-c83a-899e-f4e6" name="Lance" hidden="false" targetId="a15a-0123-6693-7a50" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="1eb7-3f36-8cf7-e0ba" name="Great Weapon" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="38c9-2702-5d98-b2ad" name="Great Weapon" hidden="false" targetId="97d4-ed3b-5f76-5a23" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="36a8-7bbb-d204-0314" name="Two Hand Weapons" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="ca7b-eae8-e28b-4f0c" name="Additional Hand weapon" hidden="false" targetId="72aa-da68-2dae-4ab6" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="b3f3-a133-2869-0be8" name="Halberds" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="8f97-e6f6-fada-7570" name="Halberd" hidden="false" targetId="3596-7d17-9ca2-fb92" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="3211-d836-02f1-01d0" name="Barding" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="4985-823b-e965-35fe" name="Barding" hidden="false" targetId="25e4-8f3a-a1a8-a7b6" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="abdb-bbd0-41b2-5dff" name="Hand Weapon" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="1091-5b16-bd29-c7f0" name="Hand Weapon" hidden="false" targetId="5556-38ea-b278-4a8f" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="104f-5817-4bda-9382" name="Spear Infantry" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="3fbf-2e63-d6b2-91e9" name="Spears (Infantry)" hidden="false" targetId="222b-1e29-9d24-09d7" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="027b-31d2-b3e2-23a4" name="Spear (Mounted)" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="e839-3916-b0b1-8c7b" name="Spear (Mounted)" hidden="false" targetId="ec7d-fa6d-d0f6-5589" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="f920-04d5-06c0-c2c9" name="Long Bow" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="bc72-2992-eb53-aaa9" name="Long Bow" hidden="false" targetId="67c1-cca3-76a7-0667" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="3428-8f18-865a-44cd" name="Short Bow" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="e7a8-64ce-c0d4-68d6" name="Short Bow" hidden="false" targetId="5e53-1e3a-3e8e-22b2" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="44f9-f44d-d693-84f8" name="Pistol" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="0c60-f0b1-4814-53c2" name="Pistol" hidden="false" targetId="e6ab-509a-9826-7080" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="9efb-2b02-f245-62f5" name="Bow" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="cddf-4c47-291f-1bab" name="Bow" hidden="false" targetId="ec76-323e-c09d-eae4" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="4c50-49fe-7ac2-4b3b" name="Crossbow" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="4f1e-39c2-0117-02e3" name="Crossbow" hidden="false" targetId="1979-9085-40d4-adee" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="fe39-7a3b-c3ed-67f8" name="Handgun" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="0d37-a8b4-460f-3b3d" name="Handgun" hidden="false" targetId="4ce2-acff-b3af-72fd" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="ca1c-a42a-c387-2cb2" name="Sling" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="65bd-c924-1ed5-7830" name="Sling" hidden="false" targetId="67a2-04c0-f8fb-7741" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="bddd-26a2-7b14-c3fa" name="Throwing Axe" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="d01e-a5d1-b9be-69ec" name="Throwing Axe" hidden="false" targetId="c4c3-8f22-9db7-1a00" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="6c61-37b0-5fa6-c20c" name="Throwing Star/ Knife" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="d76f-ae3e-98ae-7a6d" name="Throwing Star/ Knife" hidden="false" targetId="9c9b-f589-846f-c1d8" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="2eb9-be12-caec-57e8" name="Flail" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="fe8f-7914-842b-138e" name="Flail" hidden="false" targetId="10f8-e196-d180-044c" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="f2fb-8b67-9f3b-a096" name="Morning Star" hidden="false" collective="false" import="true" type="upgrade">
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="bd00-7ec3-0e5b-0d52" name="Brace Of Pistols" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="3854-bcd0-2619-e868" name="Brace Of Pistols" hidden="false" targetId="e5ce-0262-e817-adc2" type="rule"/>
        <infoLink id="8257-bdb1-5d78-797b" name="Pistol" hidden="false" targetId="e6ab-509a-9826-7080" type="profile"/>
      </infoLinks>
      <costs>
        <cost name="pts" typeId="ecfa-8486-4f6c-c249" value="0.0"/>
      </costs>
    </selectionEntry>
  </sharedSelectionEntries>
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
      <description>Subject to frenzy. </description>
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
  </sharedProfiles>
</gameSystem>