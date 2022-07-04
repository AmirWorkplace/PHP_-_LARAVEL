#include <ESP8266WiFi.h>
#include <ESP8266WebServer.h>
#include <ArduinoJson.h>

#define led0 16               //D0
#define led1 5                //D1
#define led2 4                //D2
#define led3 0                //D3
#define led4 2                //D4
#define led5 14               //D5

DynamicJsonBuffer jsonBuffer; //JSON veriable

const char *ssid      = "espiot";
const char *password  = "12345678";



int
        sv0 = 0,        //Value to send veriable
        sv1 = 0,        
        sv2 = 0,        
        sv3 = 0,    
        sv4 = 0,
        sv5 = 0;  
        String svs;  // Make all sv veriable to JSON file

ESP8266WebServer server(80);

void handleSentVar() {

  if (server.hasArg("sensor_reading"))
  {
    sensor_values = server.arg("sensor_reading");
    Serial.println(sensor_values);
  }
  JsonObject& root = jsonBuffer.parseObject(svs);
//  if (!root.success()) {
//    Serial.println("parseObject() failed");
//    return;
//  }
//  if (root.success())
//  {
    sv0          = root["sensor0_reading"].as<int>();
    sv1          = root["sensor1_reading"].as<int>();
    sv2          = root["sensor2_reading"].as<int>();
    sv3          = root["sensor3_reading"].as<int>();
	sv4          = root["sensor4_reading"].as<int>();
	sv5          = root["sensor5_reading"].as<int>();

//  }

  //Serial.println(sv0);
 // Serial.println(sv1);
  //Serial.println(sv2);
  //Serial.println(sv3);

  toggle_leds();

  server.send(200, "text/html", "Data received");
}


void setup() {
  Serial.begin(9600);
  WiFi.softAP(ssid, password);
  IPAddress myIP = WiFi.softAPIP();

  pinMode(led0, OUTPUT);
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);
  pinMode(led4, OUTPUT);
  pinMode(led5, OUTPUT);
  
  //toggle_leds();                 //turn off all leds as all the sensor values are zero
  
  server.on("/data/", HTTP_GET, handleSentVar); // when the server receives a request with /data/ in the string then run the handleSentVar function
  server.begin();
}

void loop() {
  server.handleClient();
}

void toggle_leds()
{
  if (sv0 == 0)  digitalWrite(led0, LOW);
  if (sv1 == 0)  digitalWrite(led1, LOW);
  if (sv2 == 0)  digitalWrite(led2, LOW);
  if (sv3 == 0)  digitalWrite(led3, LOW);
  if (sv4 == 0)  digitalWrite(led4, LOW);
  if (sv5 == 0)  digitalWrite(led5, LOW);

  if (sv0 == 1)  digitalWrite(led0, HIGH);
  if (sv1 == 1)  digitalWrite(led1, HIGH);
  if (sv2 == 1)  digitalWrite(led2, HIGH);
  if (sv3 == 1)  digitalWrite(led3, HIGH);
  if (sv4 == 1)  digitalWrite(led4, HIGH);
  if (sv5 == 1)  digitalWrite(led5, HIGH);
}
