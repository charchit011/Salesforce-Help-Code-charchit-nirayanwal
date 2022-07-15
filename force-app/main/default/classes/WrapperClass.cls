// When data Comes in JSON Format
// We need to parse it on seperate class - The best practice 
// For more You can go to SalesforceVision.com
//  Developed by - Charchit Nirayanwal 


//for JSON



// {
//     "status": "OK",
//     "message": "",
//     "zones": [
//         {
//             "countryCode": "CI",
//             "countryName": "C\u00f4te d'Ivoire",
//             "zoneName": "Africa\/Abidjan",
//             "gmtOffset": 0,
//             "timestamp": 1642527697
//         },
//         {
//             "countryCode": "GH",
//             "countryName": "Ghana",
//             "zoneName": "Africa\/Accra",
//             "gmtOffset": 0,
//             "timestamp": 1642527697
//         },
//         {
//             "countryCode": "ET",
//             "countryName": "Ethiopia",
//             "zoneName": "Africa\/Addis_Ababa",
//             "gmtOffset": 10800,
//             "timestamp": 1642538497
//         },
//         {
//             "countryCode": "DZ",
//             "countryName": "Algeria",
//             "zoneName": "Africa\/Algiers",
//             "gmtOffset": 3600,
//             "timestamp": 1642531297
//         }
// ]
// }


public class WrapperClass {

    public String status;
    public String message;
    public List<Zones> zones;

    public class Zones {
        public String countryCode;
        public String countryName;
        public String zoneName;
        public Integer gmtOffset;
        public Integer timestamp;
    }

    public static JSON2Apex parse(String json) {
        return (JSON2Apex) System.JSON.deserialize(json, JSON2Apex.class);
    }
}





}

