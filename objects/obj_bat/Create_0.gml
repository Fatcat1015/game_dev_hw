/// @description Insert description here
// You can write your code in this editor
event_inherited();
scale = 0.125;
image_xscale = scale;
image_yscale = scale;

idle = 0;
chase = 1;
attack = 2;
die = 3;
hit = 4;
state = chase;

target_x = 0;
target_y = 0;
attack_range = 100;
attack_timer = 0;
chase_timer = 0;
stun_timer = 0;
attack_speed = 0;
attack_hit = false;



HP = 5;
Damage = 4;
enemySpeed = 3;