%
pr(0002-1, [es, necesaria, 'y/o'], [ 'No, ya que la ¨o¨ es no excluyente, es decir, la conjunción ¨o¨ puede expresar en español ambos valores conjuntamente.'], 20/20, ['Luis Sanchez']). 

pr(0002-1, [no, falso, implica, falso], falso, 20/20, ['Luis Sanchez']).
pr(0002-2, [no, verdad, implica, falso], verdadero, 20/20, ['Luis Sanchez']).
pr(0002-3, [no, falso, implica, verdad], verdadero, 20/20, ['Luis Sanchez']).
pr(0002-4, [no, verdad, implica, verdad], verdadero, 20/20, ['Luis Sanchez']).

pr(0002-5, [falso, si, y, solo, si, falso], verdadero, 20/20, ['Luis Sanchez']).
pr(0002-6, [falso, si, y, solo, si, verdad], falso, 20/20, ['Luis Sanchez']).
pr(0002-7, [verdad, si, y, solo, si, falso], falso, 20/20, ['Luis Sanchez']).
pr(0002-8, [verdad, si, y, solo, si, verdad], verdadero, 20/20, ['Luis Sanchez']).

pr(0002-9, [no, falso, o, no, falso], verdadero, 20/20, ['Luis Sanchez']).
pr(0002-10, [no, falso, o, no, verdad], verdadero, 20/20, ['Luis Sanchez']).
pr(0002-11, [no, verdad, o, no, falso], verdadero, 20/20, ['Luis Sanchez']).
pr(0002-12, [no, verdad, o, no, verdad], falso, 20/20, ['Luis Sanchez']).

pr(0002-13, [no, falso, y, no, falso], verdadero, 20/20, ['Luis Sanchez']).
pr(0002-14, [no, falso, y, no, verdad], falso, 20/20, ['Luis Sanchez']).
pr(0002-15, [no, verdad, y, no, falso], falso, 20/20, ['Luis Sanchez']).
pr(0002-16, [no, verdad, y, no, verdad], falso, 20/20, ['Luis Sanchez']).

pr(0002-17, [falso, y, '(', no, falso, implica, falso,')'], falso, 20/20, ['Luis Sanchez']).
pr(0002-18, [falso, y, '(', no, verdad, implica, falso,')'], falso, 20/20, ['Luis Sanchez']).
pr(0002-19, [verdad, y, '(', no, falso, implica, falso,')'], falso, 20/20, ['Luis Sanchez']).
pr(0002-20, [verdad, y, '(', no, verdad, implica, falso,')'], verdadero, 20/20, ['Luis Sanchez']).
pr(0002-21, [falso, y, '(', no, falso, implica, verdad,')'], falso, 20/20, ['Luis Sanchez']).
pr(0002-22, [falso, y, '(', no, verdad, implica, verdad,')'], falso, 20/20, ['Luis Sanchez']).  
pr(0002-23, [verdad, y, '(', no, falso, implica, verdad,')'], verdadero, 20/20, ['Luis Sanchez']).
pr(0002-24, [verdad, y, '(', no, verdad, implica, verdad,')'], verdadero, 20/20, ['Luis Sanchez']).
pr(0002-1, ['Qué', es, un, elemento], ['Aquello que podemos imaginar único, individual, independiente y distinto de las demás cosas a su alrededor.'], 20/20, ['Luis Sanchez']).
rp(0002-1, ['Aquello que podemos imaginar único, individual, independiente y distinto de las demás cosas a su alrededor.'],['Qué', es, un, conjunto]).
pr(0002-2, ['Que', es, un, conjunto], ['Un conjunto es la agrupación de varios elementos que comparten características o rasgos similares.'], 20/20, ['Luis Sanchez']).
rp(0002-2, ['Un conjunto es la agrupación de varios elementos que comparten características o rasgos similares.'],['Cuántos', tipos, de, conjuntos, existen]).
pr(0002-3, ['Cuántos', tipos, de, conjuntos, existen], ['Existen 8 tipos de conjuntos, estos son: conjuntos finitos, conjuntos infinitos, conjuntos unitarios, conjuntos vacíos, conjuntos homogéneos, conjuntos heterogéneos, conjuntos equivalentes, conjuntos iguales.'], 20/20, ['Luis Sanchez']).


