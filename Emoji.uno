#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64
#define OLED_RESET -1

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

// Draw common face outline
void drawFace() {
  display.drawCircle(64, 32, 30, SSD1306_WHITE);
}

// 🙂 Happy
void happyFace() {
  display.clearDisplay();
  drawFace();
  display.fillCircle(52, 25, 3, SSD1306_WHITE);
  display.fillCircle(76, 25, 3, SSD1306_WHITE);
  display.drawLine(50, 40, 58, 46, SSD1306_WHITE);
  display.drawLine(58, 46, 70, 46, SSD1306_WHITE);
  display.drawLine(70, 46, 78, 40, SSD1306_WHITE);
  display.display();
}

// 😐 Neutral
void neutralFace() {
  display.clearDisplay();
  drawFace();
  display.fillCircle(52, 25, 3, SSD1306_WHITE);
  display.fillCircle(76, 25, 3, SSD1306_WHITE);
  display.drawLine(52, 42, 76, 42, SSD1306_WHITE);
  display.display();
}

// 😢 Sad
void sadFace() {
  display.clearDisplay();
  drawFace();
  display.fillCircle(52, 25, 3, SSD1306_WHITE);
  display.fillCircle(76, 25, 3, SSD1306_WHITE);
  display.drawLine(50, 48, 58, 42, SSD1306_WHITE);
  display.drawLine(58, 42, 70, 42, SSD1306_WHITE);
  display.drawLine(70, 42, 78, 48, SSD1306_WHITE);
  display.display();
}

// 😠 Angry
void angryFace() {
  display.clearDisplay();
  drawFace();
  display.drawLine(48, 22, 56, 26, SSD1306_WHITE);
  display.drawLine(80, 22, 72, 26, SSD1306_WHITE);
  display.fillCircle(52, 28, 3, SSD1306_WHITE);
  display.fillCircle(76, 28, 3, SSD1306_WHITE);
  display.drawLine(52, 46, 76, 46, SSD1306_WHITE);
  display.display();
}

// 😲 Surprised
void surpriseFace() {
  display.clearDisplay();
  drawFace();
  display.drawCircle(52, 25, 3, SSD1306_WHITE);
  display.drawCircle(76, 25, 3, SSD1306_WHITE);
  display.drawCircle(64, 44, 6, SSD1306_WHITE);
  display.display();
}

// 😴 Sleepy
void sleepyFace() {
  display.clearDisplay();
  drawFace();
  display.drawLine(48, 26, 56, 26, SSD1306_WHITE);
  display.drawLine(72, 26, 80, 26, SSD1306_WHITE);
  display.drawLine(54, 44, 74, 44, SSD1306_WHITE);
  display.display();
}

void setup() {
  if (!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) {
    while (true); // Stop if OLED not found
  }
  display.clearDisplay();
}

void loop() {
  happyFace();
  delay(1000);

  neutralFace();
  delay(1000);

  sadFace();
  delay(1000);

  angryFace();
  delay(1000);

  surpriseFace();
  delay(1000);

  sleepyFace();
  delay(1000);
}
