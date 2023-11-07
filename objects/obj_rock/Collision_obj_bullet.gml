// destroi a instancia
instance_destroy(other);

// efeito simples de explosao
effect_create_above(ef_explosion, x, y, 1, c_white);

// altera a direcao da pedra aleatoriamente
direction = random(360);

// ao colidir, checa o sprite
// se tem o grande, substitui
// caso quantidade de pedra menor que 12
// cria novas fora da tela 
// senao destroi
if sprite_index == spr_rock_big {
	sprite_index = spr_rock_small;
	instance_copy(true);
} else if instance_number(obj_rock) < 12 {
	sprite_index = spr_rock_big;
	x = -100;
} else {
	instance_destroy();
}


// incrementa pontuacao quando destruido
obj_game.points += 50;
