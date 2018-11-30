//
//  OptimizelyCoreTests.swift
//  OptimizelyCoreTests
//
//  Created by Thomas Zurkan on 11/26/18.
//  Copyright © 2018 Optimizely. All rights reserved.
//

import XCTest
@testable import OptimizelyCore

class OptimizelyCoreTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        let json = "{\"version\": \"4\", \"rollouts\": [{\"experiments\": [{\"status\": \"Running\", \"key\": \"11214290043\", \"layerId\": \"11216280045\", \"trafficAllocation\": [{\"entityId\": \"11196890101\", \"endOfRange\": 0}], \"audienceIds\": [], \"variations\": [{\"variables\": [{\"id\": \"11196660143\", \"value\": \"\"}], \"id\": \"11196890101\", \"key\": \"11196890101\", \"featureEnabled\": true}], \"forcedVariations\": {}, \"id\": \"11214290043\"}], \"id\": \"11216280045\"}], \"typedAudiences\": [], \"anonymizeIP\": true, \"projectId\": \"11102097459\", \"variables\": [], \"featureFlags\": [{\"experimentIds\": [\"11174010269\"], \"rolloutId\": \"11216280045\", \"variables\": [{\"defaultValue\": \"\", \"type\": \"string\", \"id\": \"11196660143\", \"key\": \"string_variable\"}], \"id\": \"11216320075\", \"key\": \"my_feature\"}], \"experiments\": [{\"status\": \"Running\", \"key\": \"my_experiment\", \"layerId\": \"11186120103\", \"trafficAllocation\": [{\"entityId\": \"11193600046\", \"endOfRange\": 5000}, {\"entityId\": \"11198460034\", \"endOfRange\": 10000}], \"audienceIds\": [], \"variations\": [{\"variables\": [{\"id\": \"11196660143\", \"value\": \"\"}], \"id\": \"11193600046\", \"key\": \"variation_1\", \"featureEnabled\": true}, {\"variables\": [], \"id\": \"11198460034\", \"key\": \"variation_2\", \"featureEnabled\": false}], \"forcedVariations\": {}, \"id\": \"11174010269\"}, {\"status\": \"Running\", \"key\": \"background_experiment\", \"layerId\": \"11150133482\", \"trafficAllocation\": [{\"entityId\": \"11146534908\", \"endOfRange\": 5000}, {\"entityId\": \"11192561814\", \"endOfRange\": 10000}], \"audienceIds\": [], \"variations\": [{\"variables\": [], \"id\": \"11146534908\", \"key\": \"variation_a\"}, {\"variables\": [], \"id\": \"11192561814\", \"key\": \"variation_b\"}], \"forcedVariations\": {}, \"id\": \"11178792174\"}], \"audiences\": [], \"groups\": [], \"attributes\": [], \"botFiltering\": false, \"accountId\": \"8362480420\", \"events\": [{\"experimentIds\": [\"11174010269\", \"11178792174\"], \"id\": \"11173400866\", \"key\": \"sample_conversion\"}, {\"experimentIds\": [\"11174010269\"], \"id\": \"11196870086\", \"key\": \"my_conversion\"}, {\"experimentIds\": [], \"id\": \"12115533234\", \"key\": \"newevent\"}], \"revision\": \"10\"}"
        let data: Data? = json.data(using: .utf8)
        let config = try! JSONDecoder().decode(ProjectConfig.self, from: data!)
        
        XCTAssertNotNil(config)
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testExample2() {
        let json = "{\"version\": \"4\", \"rollouts\": [{\"experiments\": [{\"status\": \"Running\", \"key\": \"11214290043\", \"layerId\": \"11216280045\", \"trafficAllocation\": [{\"entityId\": \"11196890101\", \"endOfRange\": 0}], \"audienceIds\": [], \"variations\": [{\"variables\": [{\"id\": \"11196660143\", \"value\": \"\"}], \"id\": \"11196890101\", \"key\": \"11196890101\", \"featureEnabled\": true}], \"forcedVariations\": {}, \"id\": \"11214290043\"}], \"id\": \"11216280045\"}], \"typedAudiences\": [], \"anonymizeIP\": true, \"projectId\": \"11102097459\", \"variables\": [], \"featureFlags\": [{\"experimentIds\": [\"11174010269\"], \"rolloutId\": \"11216280045\", \"variables\": [{\"defaultValue\": \"\", \"type\": \"string\", \"id\": \"11196660143\", \"key\": \"string_variable\"}], \"id\": \"11216320075\", \"key\": \"my_feature\"}], \"experiments\": [{\"status\": \"Running\", \"key\": \"my_experiment\", \"layerId\": \"11186120103\", \"trafficAllocation\": [{\"entityId\": \"11193600046\", \"endOfRange\": 5000}, {\"entityId\": \"11198460034\", \"endOfRange\": 10000}], \"audienceIds\": [], \"variations\": [{\"variables\": [{\"id\": \"11196660143\", \"value\": \"\"}], \"id\": \"11193600046\", \"key\": \"variation_1\", \"featureEnabled\": true}, {\"variables\": [], \"id\": \"11198460034\", \"key\": \"variation_2\", \"featureEnabled\": false}], \"forcedVariations\": {}, \"id\": \"11174010269\"}, {\"status\": \"Running\", \"key\": \"background_experiment\", \"layerId\": \"11150133482\", \"trafficAllocation\": [{\"entityId\": \"11146534908\", \"endOfRange\": 5000}, {\"entityId\": \"11192561814\", \"endOfRange\": 10000}], \"audienceIds\": [\"12097998496\"], \"variations\": [{\"variables\": [], \"id\": \"11146534908\", \"key\": \"variation_a\"}, {\"variables\": [], \"id\": \"11192561814\", \"key\": \"variation_b\"}], \"forcedVariations\": {}, \"id\": \"11178792174\"}], \"audiences\": [{\"id\": \"12097998496\", \"conditions\": \"[\\\"and\\\", [\\\"or\\\", [\\\"not\\\", [\\\"or\\\", {\\\"name\\\": \\\"testAttr\\\", \\\"type\\\": \\\"custom_attribute\\\", \\\"value\\\": \\\"some\\\"}]]]]\", \"name\": \"testAudience\"}], \"groups\": [], \"attributes\": [{\"id\": \"12248392446\", \"key\": \"testAttr\"}], \"botFiltering\": false, \"accountId\": \"8362480420\", \"events\": [{\"experimentIds\": [\"11174010269\", \"11178792174\"], \"id\": \"11173400866\", \"key\": \"sample_conversion\"}, {\"experimentIds\": [\"11174010269\"], \"id\": \"11196870086\", \"key\": \"my_conversion\"}, {\"experimentIds\": [], \"id\": \"12115533234\", \"key\": \"newevent\"}], \"revision\": \"12\"}"
        
        let data: Data? = json.data(using: .utf8)
        let config = try! JSONDecoder().decode(ProjectConfig.self, from: data!)
        
        XCTAssertNotNil(config)
        
    }
    
    func testExample3() {
        let json = "{\"accountId\":\"2360254204\",\"anonymizeIP\":true,\"botFiltering\":true,\"projectId\":\"3918735994\",\"revision\":\"1480511547\",\"version\":\"4\",\"audiences\":[{\"id\":\"3468206642\",\"name\":\"Gryffindors\",\"conditions\":[\"and\",[\"or\",[\"or\",{\"name\":\"house\",\"type\":\"custom_attribute\",\"value\":\"Gryffindor\"}]]]},{\"id\":\"3988293898\",\"name\":\"Slytherins\",\"conditions\":[\"and\",[\"or\",[\"or\",{\"name\":\"house\",\"type\":\"custom_attribute\",\"value\":\"Slytherin\"}]]]},{\"id\":\"4194404272\",\"name\":\"english_citizens\",\"conditions\":[\"and\",[\"or\",[\"or\",{\"name\":\"nationality\",\"type\":\"custom_attribute\",\"value\":\"English\"}]]]},{\"id\":\"2196265320\",\"name\":\"audience_with_missing_value\",\"conditions\":[\"and\",[\"or\",[\"or\",{\"name\":\"nationality\",\"type\":\"custom_attribute\",\"value\":\"English\"},{\"name\":\"nationality\",\"type\":\"custom_attribute\"}]]]}],\"typedAudiences\":[{\"id\":\"3468206643\",\"name\":\"BOOL\",\"conditions\":[\"and\",[\"or\",[\"or\",{\"name\":\"booleanKey\",\"type\":\"custom_attribute\",\"match\":\"exact\",\"value\":true}]]]},{\"id\":\"3468206646\",\"name\":\"INTEXACT\",\"conditions\":[\"and\",[\"or\",[\"or\",{\"name\":\"integerKey\",\"type\":\"custom_attribute\",\"match\":\"exact\",\"value\":1}]]]},{\"id\":\"3468206644\",\"name\":\"INT\",\"conditions\":[\"and\",[\"or\",[\"or\",{\"name\":\"integerKey\",\"type\":\"custom_attribute\",\"match\":\"gt\",\"value\":1}]]]},{\"id\":\"3468206645\",\"name\":\"DOUBLE\",\"conditions\":[\"and\",[\"or\",[\"or\",{\"name\":\"doubleKey\",\"type\":\"custom_attribute\",\"match\":\"lt\",\"value\":100}]]]},{\"id\":\"3468206642\",\"name\":\"Gryffindors\",\"conditions\":[\"and\",[\"or\",[\"or\",{\"name\":\"house\",\"type\":\"custom_attribute\",\"match\":\"exact\",\"value\":\"Gryffindor\"}]]]},{\"id\":\"3988293898\",\"name\":\"Slytherins\",\"conditions\":[\"and\",[\"or\",[\"or\",{\"name\":\"house\",\"type\":\"custom_attribute\",\"match\":\"substring\",\"value\":\"Slytherin\"}]]]},{\"id\":\"4194404272\",\"name\":\"english_citizens\",\"conditions\":[\"and\",[\"or\",[\"or\",{\"name\":\"nationality\",\"type\":\"custom_attribute\",\"match\":\"exact\",\"value\":\"English\"}]]]},{\"id\":\"2196265320\",\"name\":\"audience_with_missing_value\",\"conditions\":[\"and\",[\"or\",[\"or\",{\"name\":\"nationality\",\"type\":\"custom_attribute\",\"value\":\"English\"},{\"name\":\"nationality\",\"type\":\"custom_attribute\"}]]]}],\"attributes\":[{\"id\":\"553339214\",\"key\":\"house\"},{\"id\":\"58339410\",\"key\":\"nationality\"},{\"id\":\"583394100\",\"key\":\"$opt_test\"},{\"id\":\"323434545\",\"key\":\"booleanKey\"},{\"id\":\"616727838\",\"key\":\"integerKey\"},{\"id\":\"808797686\",\"key\":\"doubleKey\"},{\"id\":\"808797686\",\"key\":\"\"}],\"events\":[{\"id\":\"3785620495\",\"key\":\"basic_event\",\"experimentIds\":[\"1323241596\",\"2738374745\",\"3042640549\",\"3262035800\",\"3072915611\"]},{\"id\":\"3195631717\",\"key\":\"event_with_paused_experiment\",\"experimentIds\":[\"2667098701\"]},{\"id\":\"1987018666\",\"key\":\"event_with_launched_experiments_only\",\"experimentIds\":[\"3072915611\"]}],\"experiments\":[{\"id\":\"1323241596\",\"key\":\"basic_experiment\",\"layerId\":\"1630555626\",\"status\":\"Running\",\"variations\":[{\"id\":\"1423767502\",\"key\":\"A\",\"variables\":[]},{\"id\":\"3433458314\",\"key\":\"B\",\"variables\":[]}],\"trafficAllocation\":[{\"entityId\":\"1423767502\",\"endOfRange\":5000},{\"entityId\":\"3433458314\",\"endOfRange\":10000}],\"audienceIds\":[],\"forcedVariations\":{\"Harry Potter\":\"A\",\"Tom Riddle\":\"B\"}},{\"id\":\"1323241597\",\"key\":\"typed_audience_experiment\",\"layerId\":\"1630555627\",\"status\":\"Running\",\"variations\":[{\"id\":\"1423767503\",\"key\":\"A\",\"variables\":[]},{\"id\":\"3433458315\",\"key\":\"B\",\"variables\":[]}],\"trafficAllocation\":[{\"entityId\":\"1423767503\",\"endOfRange\":5000},{\"entityId\":\"3433458315\",\"endOfRange\":10000}],\"audienceIds\":[\"3468206643\",\"3468206644\",\"3468206646\",\"3468206645\"],\"audienceConditions\":[\"or\",\"3468206643\",\"3468206644\",\"3468206646\",\"3468206645\"],\"forcedVariations\":{}},{\"id\":\"1323241598\",\"key\":\"typed_audience_experiment_with_and\",\"layerId\":\"1630555628\",\"status\":\"Running\",\"variations\":[{\"id\":\"1423767504\",\"key\":\"A\",\"variables\":[]},{\"id\":\"3433458316\",\"key\":\"B\",\"variables\":[]}],\"trafficAllocation\":[{\"entityId\":\"1423767504\",\"endOfRange\":5000},{\"entityId\":\"3433458316\",\"endOfRange\":10000}],\"audienceIds\":[\"3468206643\",\"3468206644\",\"3468206645\"],\"audienceConditions\":[\"and\",\"3468206643\",\"3468206644\",\"3468206645\"],\"forcedVariations\":{}},{\"id\":\"1323241599\",\"key\":\"typed_audience_experiment_leaf_condition\",\"layerId\":\"1630555629\",\"status\":\"Running\",\"variations\":[{\"id\":\"1423767505\",\"key\":\"A\",\"variables\":[]},{\"id\":\"3433458317\",\"key\":\"B\",\"variables\":[]}],\"trafficAllocation\":[{\"entityId\":\"1423767505\",\"endOfRange\":5000},{\"entityId\":\"3433458317\",\"endOfRange\":10000}],\"audienceIds\":[],\"audienceConditions\":\"3468206643\",\"forcedVariations\":{}},{\"id\":\"3262035800\",\"key\":\"multivariate_experiment\",\"layerId\":\"3262035800\",\"status\":\"Running\",\"variations\":[{\"id\":\"1880281238\",\"key\":\"Fred\",\"featureEnabled\":true,\"variables\":[{\"id\":\"675244127\",\"value\":\"F\"},{\"id\":\"4052219963\",\"value\":\"red\"}]},{\"id\":\"3631049532\",\"key\":\"Feorge\",\"featureEnabled\":true,\"variables\":[{\"id\":\"675244127\",\"value\":\"F\"},{\"id\":\"4052219963\",\"value\":\"eorge\"}]},{\"id\":\"4204375027\",\"key\":\"Gred\",\"featureEnabled\":false,\"variables\":[{\"id\":\"675244127\",\"value\":\"G\"},{\"id\":\"4052219963\",\"value\":\"red\"}]},{\"id\":\"2099211198\",\"key\":\"George\",\"featureEnabled\":true,\"variables\":[{\"id\":\"675244127\",\"value\":\"G\"},{\"id\":\"4052219963\",\"value\":\"eorge\"}]}],\"trafficAllocation\":[{\"entityId\":\"1880281238\",\"endOfRange\":2500},{\"entityId\":\"3631049532\",\"endOfRange\":5000},{\"entityId\":\"4204375027\",\"endOfRange\":7500},{\"entityId\":\"2099211198\",\"endOfRange\":10000}],\"audienceIds\":[\"3468206642\"],\"forcedVariations\":{\"Fred\":\"Fred\",\"Feorge\":\"Feorge\",\"Gred\":\"Gred\",\"George\":\"George\"}},{\"id\":\"2201520193\",\"key\":\"double_single_variable_feature_experiment\",\"layerId\":\"1278722008\",\"status\":\"Running\",\"variations\":[{\"id\":\"1505457580\",\"key\":\"pi_variation\",\"featureEnabled\":true,\"variables\":[{\"id\":\"4111654444\",\"value\":\"3.14\"}]},{\"id\":\"119616179\",\"key\":\"euler_variation\",\"variables\":[{\"id\":\"4111654444\",\"value\":\"2.718\"}]}],\"trafficAllocation\":[{\"entityId\":\"1505457580\",\"endOfRange\":4000},{\"entityId\":\"119616179\",\"endOfRange\":8000}],\"audienceIds\":[\"3988293898\"],\"forcedVariations\":{}},{\"id\":\"2667098701\",\"key\":\"paused_experiment\",\"layerId\":\"3949273892\",\"status\":\"Paused\",\"variations\":[{\"id\":\"391535909\",\"key\":\"Control\",\"variables\":[]}],\"trafficAllocation\":[{\"entityId\":\"391535909\",\"endOfRange\":10000}],\"audienceIds\":[],\"forcedVariations\":{\"Harry Potter\":\"Control\"}},{\"id\":\"3072915611\",\"key\":\"launched_experiment\",\"layerId\":\"3587821424\",\"status\":\"Launched\",\"variations\":[{\"id\":\"1647582435\",\"key\":\"launch_control\",\"variables\":[]}],\"trafficAllocation\":[{\"entityId\":\"1647582435\",\"endOfRange\":8000}],\"audienceIds\":[],\"forcedVariations\":{}},{\"id\":\"748215081\",\"key\":\"experiment_with_malformed_audience\",\"layerId\":\"1238149537\",\"status\":\"Running\",\"variations\":[{\"id\":\"535538389\",\"key\":\"var1\",\"variables\":[]}],\"trafficAllocation\":[{\"entityId\":\"535538389\",\"endOfRange\":10000}],\"audienceIds\":[\"2196265320\"],\"forcedVariations\":{}}],\"groups\":[{\"id\":\"1015968292\",\"policy\":\"random\",\"experiments\":[{\"id\":\"2738374745\",\"key\":\"first_grouped_experiment\",\"layerId\":\"3301900159\",\"status\":\"Running\",\"variations\":[{\"id\":\"2377378132\",\"key\":\"A\",\"variables\":[]},{\"id\":\"1179171250\",\"key\":\"B\",\"variables\":[]}],\"trafficAllocation\":[{\"entityId\":\"2377378132\",\"endOfRange\":5000},{\"entityId\":\"1179171250\",\"endOfRange\":10000}],\"audienceIds\":[\"3468206642\"],\"forcedVariations\":{\"Harry Potter\":\"A\",\"Tom Riddle\":\"B\"}},{\"id\":\"3042640549\",\"key\":\"second_grouped_experiment\",\"layerId\":\"2625300442\",\"status\":\"Running\",\"variations\":[{\"id\":\"1558539439\",\"key\":\"A\",\"variables\":[]},{\"id\":\"2142748370\",\"key\":\"B\",\"variables\":[]}],\"trafficAllocation\":[{\"entityId\":\"1558539439\",\"endOfRange\":5000},{\"entityId\":\"2142748370\",\"endOfRange\":10000}],\"audienceIds\":[\"3468206642\"],\"forcedVariations\":{\"Hermione Granger\":\"A\",\"Ronald Weasley\":\"B\"}}],\"trafficAllocation\":[{\"entityId\":\"2738374745\",\"endOfRange\":4000},{\"entityId\":\"3042640549\",\"endOfRange\":8000}]},{\"id\":\"2606208781\",\"policy\":\"random\",\"experiments\":[{\"id\":\"4138322202\",\"key\":\"mutex_group_2_experiment_1\",\"layerId\":\"3755588495\",\"status\":\"Running\",\"variations\":[{\"id\":\"1394671166\",\"key\":\"mutex_group_2_experiment_1_variation_1\",\"featureEnabled\":true,\"variables\":[{\"id\":\"2059187672\",\"value\":\"mutex_group_2_experiment_1_variation_1\"}]}],\"audienceIds\":[],\"forcedVariations\":{},\"trafficAllocation\":[{\"entityId\":\"1394671166\",\"endOfRange\":10000}]},{\"id\":\"1786133852\",\"key\":\"mutex_group_2_experiment_2\",\"layerId\":\"3818002538\",\"status\":\"Running\",\"variations\":[{\"id\":\"1619235542\",\"key\":\"mutex_group_2_experiment_2_variation_2\",\"featureEnabled\":true,\"variables\":[{\"id\":\"2059187672\",\"value\":\"mutex_group_2_experiment_2_variation_2\"}]}],\"trafficAllocation\":[{\"entityId\":\"1619235542\",\"endOfRange\":10000}],\"audienceIds\":[],\"forcedVariations\":{}}],\"trafficAllocation\":[{\"entityId\":\"4138322202\",\"endOfRange\":5000},{\"entityId\":\"1786133852\",\"endOfRange\":10000}]}],\"featureFlags\":[{\"id\":\"4195505407\",\"key\":\"boolean_feature\",\"rolloutId\":\"\",\"experimentIds\":[],\"variables\":[]},{\"id\":\"3926744821\",\"key\":\"double_single_variable_feature\",\"rolloutId\":\"\",\"experimentIds\":[\"2201520193\"],\"variables\":[{\"id\":\"4111654444\",\"key\":\"double_variable\",\"type\":\"double\",\"defaultValue\":\"14.99\"}]},{\"id\":\"3281420120\",\"key\":\"integer_single_variable_feature\",\"rolloutId\":\"2048875663\",\"experimentIds\":[],\"variables\":[{\"id\":\"593964691\",\"key\":\"integer_variable\",\"type\":\"integer\",\"defaultValue\":\"7\"}]},{\"id\":\"2591051011\",\"key\":\"boolean_single_variable_feature\",\"rolloutId\":\"\",\"experimentIds\":[],\"variables\":[{\"id\":\"3974680341\",\"key\":\"boolean_variable\",\"type\":\"boolean\",\"defaultValue\":\"true\"}]},{\"id\":\"2079378557\",\"key\":\"string_single_variable_feature\",\"rolloutId\":\"1058508303\",\"experimentIds\":[],\"variables\":[{\"id\":\"2077511132\",\"key\":\"string_variable\",\"type\":\"string\",\"defaultValue\":\"wingardium leviosa\"}]},{\"id\":\"3263342226\",\"key\":\"multi_variate_feature\",\"rolloutId\":\"813411034\",\"experimentIds\":[\"3262035800\"],\"variables\":[{\"id\":\"675244127\",\"key\":\"first_letter\",\"type\":\"string\",\"defaultValue\":\"H\"},{\"id\":\"4052219963\",\"key\":\"rest_of_name\",\"type\":\"string\",\"defaultValue\":\"arry\"}]},{\"id\":\"3263342226\",\"key\":\"mutex_group_feature\",\"rolloutId\":\"\",\"experimentIds\":[\"4138322202\",\"1786133852\"],\"variables\":[{\"id\":\"2059187672\",\"key\":\"correlating_variation_name\",\"type\":\"string\",\"defaultValue\":null}]}],\"rollouts\":[{\"id\":\"1058508303\",\"experiments\":[{\"id\":\"1785077004\",\"key\":\"1785077004\",\"status\":\"Running\",\"layerId\":\"1058508303\",\"audienceIds\":[],\"forcedVariations\":{},\"variations\":[{\"id\":\"1566407342\",\"key\":\"1566407342\",\"featureEnabled\":true,\"variables\":[{\"id\":\"2077511132\",\"value\":\"lumos\"}]}],\"trafficAllocation\":[{\"entityId\":\"1566407342\",\"endOfRange\":5000}]}]},{\"id\":\"813411034\",\"experiments\":[{\"id\":\"3421010877\",\"key\":\"3421010877\",\"status\":\"Running\",\"layerId\":\"813411034\",\"audienceIds\":[\"3468206642\"],\"forcedVariations\":{},\"variations\":[{\"id\":\"521740985\",\"key\":\"521740985\",\"variables\":[{\"id\":\"675244127\",\"value\":\"G\"},{\"id\":\"4052219963\",\"value\":\"odric\"}]}],\"trafficAllocation\":[{\"entityId\":\"521740985\",\"endOfRange\":5000}]},{\"id\":\"600050626\",\"key\":\"600050626\",\"status\":\"Running\",\"layerId\":\"813411034\",\"audienceIds\":[\"3988293898\"],\"forcedVariations\":{},\"variations\":[{\"id\":\"180042646\",\"key\":\"180042646\",\"featureEnabled\":true,\"variables\":[{\"id\":\"675244127\",\"value\":\"S\"},{\"id\":\"4052219963\",\"value\":\"alazar\"}]}],\"trafficAllocation\":[{\"entityId\":\"180042646\",\"endOfRange\":5000}]},{\"id\":\"2637642575\",\"key\":\"2637642575\",\"status\":\"Running\",\"layerId\":\"813411034\",\"audienceIds\":[\"4194404272\"],\"forcedVariations\":{},\"variations\":[{\"id\":\"2346257680\",\"key\":\"2346257680\",\"featureEnabled\":true,\"variables\":[{\"id\":\"675244127\",\"value\":\"D\"},{\"id\":\"4052219963\",\"value\":\"udley\"}]}],\"trafficAllocation\":[{\"entityId\":\"2346257680\",\"endOfRange\":5000}]},{\"id\":\"828245624\",\"key\":\"828245624\",\"status\":\"Running\",\"layerId\":\"813411034\",\"audienceIds\":[],\"forcedVariations\":{},\"variations\":[{\"id\":\"3137445031\",\"key\":\"3137445031\",\"featureEnabled\":true,\"variables\":[{\"id\":\"675244127\",\"value\":\"M\"},{\"id\":\"4052219963\",\"value\":\"uggle\"}]}],\"trafficAllocation\":[{\"entityId\":\"3137445031\",\"endOfRange\":5000}]}]},{\"id\":\"2048875663\",\"experiments\":[{\"id\":\"3794675122\",\"key\":\"3794675122\",\"status\":\"Running\",\"layerId\":\"2048875663\",\"audienceIds\":[],\"forcedVariations\":{},\"variations\":[{\"id\":\"589640735\",\"key\":\"589640735\",\"featureEnabled\":true,\"variables\":[]}],\"trafficAllocation\":[{\"entityId\":\"589640735\",\"endOfRange\":10000}]}]}],\"variables\":[]}"
        
        let data: Data? = json.data(using: .utf8)
        let config = try! JSONDecoder().decode(ProjectConfig.self, from: data!)
        
        XCTAssertNotNil(config)
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
