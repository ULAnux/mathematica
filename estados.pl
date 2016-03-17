/* Programa realizado por mi basado en el ejemplo de las fronteras de los estados alemanes de Bernardo Pires mostrado en bit.ly/1GtrJxB aplicado en estados de Venezuela*/
/* Imagenes de antes y despues se pueden ver en bit.ly/1TGNeUV */

color(rojo).
color(azul).
color(verde).
color(amarillo).
vecino(ColorestadoA, ColorestadoB) :- color(ColorestadoA), color(ColorestadoB), ColorestadoA \== ColorestadoB. 
venezuela(ZU, FA, TA, LA, TR, ME, BA, AP, PO, YA, BO, GU, CO, CA, GU, AR, AM, AN, MO, DA, MI, VA, DC, SU, NE) :- vecino(ZU, TA), vecino(ZU, ME), vecino(ZU, TR), vecino(ZU, LA), vecino(ZU, FA), vecino(TA, ME), vecino(TA, BA), vecino(TA, AP), vecino(ME, BA), vecino(ME, TR), vecino(TR, PO), vecino(TR, LA), vecino(TR, BA), vecino(LA, YA), vecino(LA, FA), vecino(LA, PO), vecino(FA, YA), vecino(YA, BA), vecino(AP, GU), vecino(AP, BO), vecino(BA,AP), vecino(BA, PO), vecino(BA, CO), vecino(BA, GU), vecino(PO,CO), vecino(CO,GU), vecino(CO,YA), vecino(CO,CA), vecino(YA, CA), vecino(CA, GU), vecino(CA, AR), vecino(AM, BO), vecino(BO, GU), vecino(BO, AN), vecino(BO, MO), vecino(BO, DA), vecino(GU, AN), vecino(GU, AR), vecino(GU, MI), vecino(AR, MI), vecino(AR, VA), vecino(MI, DC), vecino(MI, VA), vecino(DC, VA), vecino(AN, MO), vecino(AN, SU), vecino(MO, SU), vecino(MO, DA), vecino(SU, NE).
