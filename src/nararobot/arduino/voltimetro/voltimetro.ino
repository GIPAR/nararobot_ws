#include <ros.h>
#include <std_msgs/Float32.h>

#define sinal A0
#define rele 5

float volts = 0.0;

ros::NodeHandle nh;

std_msgs::Float32 volt_msg;
ros::Publisher pub_volt("/voltage", &volt_msg);

void setup(){
  nh.initNode();
  nh.advertise(pub_volt);
  pinMode(rele, OUTPUT);
  digitalWrite(rele, LOW);
  pinMode(sinal, INPUT);
  Serial.begin(57600);
}

void loop(){

  volts = analogRead(sinal)*(5.0/1023);
  volts = volts*5.0;

  Serial.print(volts,2);
  Serial.println("V");
  volt_msg.data = volts;
  pub_volt.publish(&volt_msg);
  nh.spinOnce();
  
  if (volts < 25.0) {
    digitalWrite(rele, LOW); // Liga o relé
  } else {
    digitalWrite(rele, HIGH); // Desliga o relé
  }
  
  delay(1000);
}