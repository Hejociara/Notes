PImage platform[] = new PImage[3];
void setup() {
size(640,360);
platform[0] = loadImage("Tile_01.png");
platform[1] = loadImage("Tile_02.png");
platform[2] = loadImage("Tile_03.png");
}

void draw() {background(0);
image(platform[0], 0, height - 64, 64, 64);
image(platform[1], 64, height - 64, 64, 64);
image(platform[2], 128, height - 64, 64, 64);
}   
}
