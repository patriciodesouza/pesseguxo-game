//criando variáveis e atribuindo os valores de teclas para eles:
var chao = place_meeting(x, y + 1, obj_chao)
var _left, _right, _jump, _run;
_left  = keyboard_check(inputs.left);
_right = keyboard_check(inputs.right);
_jump = keyboard_check_pressed(inputs.jump);
_run = keyboard_check(inputs.run)
//Atribuindo os valores da velocidade vertical/gravidade e horizontal
velh = (_right - _left)* vel;
velv += grav;


//Pulo
if(chao)
{
	if (velh != 0)
	{
		sprite_index = spr_PessWalking
		image_xscale = sign(velh)
	}
	
	else
	{
		sprite_index = spr_PessNorm
	}
	if(_jump)
	{
		velv = - alt_jump;
	}
	if(_run)
	{
		vel = 3
	}
	else
	{
		vel = 1.5
	}
}
else
	if(velv < 0)
	{
		sprite_index = spr_Pess_Jump_Up
	}
	else
	{
		sprite_index = spr_Pess_Jump_Down
	}
{	//Aplica a gravidade
	velv += grav;
	if (velh > 0)
	{
		sprite_index = spr_PessWalking
		image_xscale = 0.75
		image_yscale = 0.75
	}
	if (velh < 0)
	{
		sprite_index = spr_PessWalking
		image_xscale = -.75
		image_yscale = 0.75
	}
}