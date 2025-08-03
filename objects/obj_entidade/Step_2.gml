//Fazendo Colisão Horizontal
//Checando colisão
var _col = instance_place(x + velh, y, obj_chao);
//condição para saber se estou colidindo
if _col
{	//Checando se esta indo para direita
	if (velh > 0)
	{//Deixando player rente a parede
		x = _col.bbox_left + (x - bbox_right);
	}
	
	//Checando se esta indo para esquerda
	if (velh < 0)
	{//Deixando player rente a parede
		x = _col.bbox_right + (x - bbox_left);
	}
	velh = 0;
}
_col = instance_place(x, y + velv, obj_chao);

if _col
{	
	if (velv > 0)
	{//Checando se esta indo para baixo
		y = _col.bbox_top + (y - bbox_bottom)
	}
	if (velv < 0)
	{//Checando se esta indo para cima
		y = _col.bbox_bottom + (y - bbox_top)
	}
	velv = 0;
}

//Fazendo Colisão Horizontal
//Checando colisão


//Utilizando as variáveis de valocidade de movimento horizontal e vertical/gravidade
x += velh
y += velv