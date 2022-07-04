#include <ESP8266WiFi.h>

#define btn0 16
#define btn1 5
#define btn2 4
#define btn3 0
#define btn4 2
#define btn5 14


const char *ssid = "espiot";
const char *password = "12345678";


int sv0 = 0;       //sensor value
int sv1 = 0;        
int sv2 = 0;        
int sv3 = 0;
int sv4 = 0; 
int sv5 = 0; 
     

void setup() {
  Serial.begin(115200);
  delay(10);

  pinMode(btn0, INPUT);
  pinMode(btn1, INPUT);
  pinMode(btn2, INPUT);
  pinMode(btn3, INPUT);
  pinMode(btn4, INPUT);
  pinMode(btn5, INPUT);


  // set the ESP8266 to be a WiFi-client
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
  }

}

void loop() {
if(digitalRead(btn0) == LOW) sv0 = 1;
if(digitalRead(btn1) == LOW) sv1 = 1;
if(digitalRead(btn2) == LOW) sv2 = 1;
if(digitalRead(btn3) == LOW) sv3 = 1;
if(digitalRead(btn4) == LOW) sv4 = 1;
if(digitalRead(btn5) == LOW) sv5 = 1;
if(digitalRead(btn0) == HIGH) sv0 = 0;
if(digitalRead(btn1) == HIGH) sv1 = 0;
if(digitalRead(btn2) == HIGH) sv2 = 0;
if(digitalRead(btn3) == HIGH) sv3 = 0;
if(digitalRead(btn4) == HIGH) sv4 = 0;
if(digitalRead(btn5) == HIGH) sv5 = 0;


  // Use WiFiClient class to create TCP connections
  WiFiClient client;
  const char * host = "192.168.4.1";            //default IP address
  const int httpPort = 80;

  if (!client.connect(host, httpPort)) {
    Serial.println("connection failed");
    return;
  }

  // We now create a URI for the request. Something like /data/?sensor_reading=123
  String url = "/data/";
  url += "?sensor_reading=";
  url +=  "{\"sensor0_reading\":\"sensor0_value\",\"sensor1_reading\":\"sensor1_value\",\"sensor2_reading\":\"sensor2_value\",\"sensor3_reading\":\"sensor3_value\"\"sensor4_reading\":\"sensor4_value\"\"sensor5_reading\":\"sensor5_value\"}";
  url.replace("sensor0_value", String(sv0));
  url.replace("sensor1_value", String(sv1));
  url.replace("sensor2_value", String(sv2));
  url.replace("sensor3_value", String(sv3));
  url.replace("sensor4_value", String(sv4));
  url.replace("sensor5_value", String(sv5));

  // This will send the request to the server
  client.print(String("GET ") + url + " HTTP/1.1\r\n" +
               "Host: " + host + "\r\n" +
               "Connection: close\r\n\r\n");
  unsigned long timeout = millis();
  while (client.available() == 0) {
    if (millis() - timeout > 5000) {
      Serial.println(">>> Client Timeout !");
      client.stop();
      return;
    }
  }
}
